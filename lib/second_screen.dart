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
      body: SafeArea(
        child: Stack(
          children: [
            Center(
              child: Container(
                  color: const Color.fromRGBO(155, 150, 150, 1),
                  width: 320,
                  height: 183,
                  child: Column(
                    children: [
                      myTextFormField(
                        enabled: false,
                      ),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
