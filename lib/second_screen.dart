import 'package:assignment_13/common.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  final String cardNumber,
      cardHolderName,
      expiryMonthDate1,
      expiryYearDate1,
      cvvCode;
  const SecondScreen(
      {super.key,
      required this.cardNumber,
      required this.cardHolderName,
      required this.expiryMonthDate1,
      required this.expiryYearDate1,
      required this.cvvCode});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // show the card details
      body: Stack(
        children: [
          Container(
            color: const Color.fromRGBO(203, 208, 220, 1),
            width: double.infinity,
            height: double.infinity,
            child: Center(
              child: Container(
                  color: const Color.fromRGBO(155, 150, 150, 1),
                  width: 320,
                  height: 183,
                  child: Column(
                    children: [
                      const SizedBox(height: 70),
                      myTextFormField(
                        enabled: false,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 150,
                            height: 50,
                            child: myTextFormField(
                              enabled: false,
                            ),
                          ),
                          SizedBox(
                            width: 90,
                            height: 50,
                            child: myTextFormField(
                              enabled: false,
                            ),
                          ),
                          SizedBox(
                            width: 70,
                            height: 50,
                            child: myTextFormField(
                              enabled: false,
                            ),
                          ),
                        ],
                      ),
                    ],
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
