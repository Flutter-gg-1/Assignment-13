import 'package:bank_card/src/card_data/card_holder.dart';
import 'package:bank_card/src/card_data/card_number.dart';
import 'package:bank_card/src/card_data/expird_month.dart';
import 'package:bank_card/src/card_data/expird_year.dart';
import 'package:flutter/material.dart';
import 'show_card_data.dart';

class BankCard extends StatefulWidget {
  const BankCard({super.key});

  @override
  State<BankCard> createState() => _BankCardState();
}

class _BankCardState extends State<BankCard> {
  TextEditingController cardNumberController = TextEditingController();
  TextEditingController expierdMController = TextEditingController();
  TextEditingController expierdYController = TextEditingController();
  TextEditingController cardHolderController = TextEditingController();

  Map<String, String> getCardData() {
    return {
      "cardNumber": cardNumberController.text,
      "expierdMonth": expierdMController.text,
      "expierdYear": expierdYController.text,
      "cardHolder": cardHolderController.text,
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 217, 227, 237),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 210),
        child: Column(
          children: [
            Container(
              height: 320,
              width: 340,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 30, right: 30, top: 50),
                    child: Column(
                      children: [
                        cardNumber(cardNumberController: cardNumberController),
                        const SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: expirdMonth(
                                expierdMController: expierdMController,
                              ),
                            ),
                            const SizedBox(width: 20),
                            Expanded(
                              child: expirdYear(
                                expierdYController: expierdYController,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 30),
                        cardHolder(cardHolderController: cardHolderController),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 100),
            showCardData(
              context: context,
              data: getCardData(),
            ),
          ],
        ),
      ),
    );
  }
}
