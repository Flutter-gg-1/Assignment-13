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
    return Container(
      child: Dialog(
        child: Container(
          child: Column(
            children: [
              Text(widget.cardNumber),
              Text(widget.cardHolderName),
              Text(widget.expiryMonthDate1),
              Text(widget.expiryYearDate1),
              Text(widget.cvvCode),
            ],
          ),
        ),
      ),
    );
  }
}
