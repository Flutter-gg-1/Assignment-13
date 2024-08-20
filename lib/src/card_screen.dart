import 'package:bank_card_app/global.dart';
import 'package:bank_card_app/widget/card_feild/card_date.dart';
import 'package:bank_card_app/widget/card_feild/card_holder.dart';
import 'package:bank_card_app/widget/card_feild/card_number.dart';
import 'package:bank_card_app/widget/card_info.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({super.key});

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  TextEditingController cardNumberController = TextEditingController();
  TextEditingController cardHolderController = TextEditingController();
  TextEditingController cardMonthController = TextEditingController();
  TextEditingController cardYearController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFC9CBD0),
      body: SafeArea(
          child: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: 315,
                height: 350,
                margin: const EdgeInsets.only(bottom: 80),
                padding:
                    const EdgeInsets.symmetric(vertical: 40, horizontal: 31),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    CardNumberFeild(
                      controller: cardNumberController,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        DateFeild(
                          controller: cardMonthController,
                          isMonth: true,
                        ),
                        DateFeild(
                          controller: cardYearController,
                          isMonth: false,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    CardHolderFeild(
                      controller: cardHolderController,
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF0C67C0),
                  side: const BorderSide(color: Colors.white, width: 2),
                  fixedSize: const Size(270, 53),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontStyle: FontStyle.normal),
                ),
                onPressed: () {
                  if (GlobalData.cardHolder.isNotEmpty ||
                      GlobalData.cardNumber.isNotEmpty ||
                      GlobalData.cardMonth.isNotEmpty ||
                      GlobalData.cardYear.isNotEmpty) {
                    showDialog(
                      context: context,
                      builder: (context) => const CardInfo(),
                    );
                  } else {
                    showDialog(
                      context: context,
                      builder: (context) => const AlertDialog(
                        content: Center(
                          child: Text(
                            'Invalid card info',
                            style: TextStyle(color: Colors.red, fontSize: 20),
                          ),
                        ),
                      ),
                    );
                  }
                },
                child: const Text(
                  'Show card data',
                  style: TextStyle(
                      color: Color(0xFFF5F5F5),
                      fontSize: 13,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
