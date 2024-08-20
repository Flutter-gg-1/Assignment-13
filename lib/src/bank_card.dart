import 'package:bank_card/src/card_data/card_number.dart';
import 'package:bank_card/src/card_data/card_holder.dart';
import 'package:bank_card/src/card_data/expird_month.dart';
import 'package:bank_card/src/card_data/expird_year.dart';
import 'package:bank_card/src/show_card_data.dart';
import 'package:flutter/material.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 217, 227, 237),
        body: Center(
            child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 210),
                child: Column(children: [
                  Container(
                      height: 340,
                      width: 340,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 30, right: 30, top: 40),
                          child: Padding(
                            padding: const EdgeInsets.all(30),
                            child: Column(
                              children: [
                              //  cardNumber(cardNumberController),
                                const SizedBox(height: 30),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                        child: expirdMonth(
                                            expierdMController:
                                                expierdMController)),
                                    const SizedBox(width: 20),
                                    Expanded(
                                        child: expirdYear(
                                            expierdYController:
                                                expierdYController)),
                                  ],
                                ),
                                const SizedBox(height: 30),
                                cardHolder(
                                    cardHolderController: cardHolderController),
                                const SizedBox(height: 30),
                                SizedBox(
                                  height: 100,
                                ),
                                showCardData(context: context)
                              ],
                            ),
                          ),
                        ),
                      ]))
                ]))));
  }
}
