import 'package:flutter/material.dart';

class AlertMessage extends StatelessWidget {
  final String cardNumber;
  final String expMM;
  final String expYY;
  final String cardHolder;

  const AlertMessage({
    super.key,
    required this.cardNumber,
    required this.expMM,
    required this.expYY,
    required this.cardHolder,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        backgroundColor: Colors.white,
        contentPadding: EdgeInsets.zero,
        content: Stack(
          children: [
            Container(
              clipBehavior: Clip.none,
              height: 183.25,
              width: 320,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                      color: const Color.fromRGBO(12, 103, 193, 1), width: 2),
                  gradient: const LinearGradient(colors: [
                    Color.fromRGBO(43, 34, 34, 0.5),
                    Color.fromRGBO(110, 101, 101, 0.5)
                  ]),
                  boxShadow: const [
                    BoxShadow(
                        offset: Offset(5, 7),
                        blurRadius: 8,
                        color: Color.fromRGBO(0, 0, 0, 0.25))
                  ]),
              child: Column(
                children: [
                  const SizedBox(
                    height: 80,
                  ),
                  Row(
                    children: [
                      Text(cardNumber.substring(0, 4)),
                      Text(' ${cardNumber.substring(4, 8)}'),
                      Text(' ${cardNumber.substring(8, 12)}'),
                      Text(' ${cardNumber.substring(12, 16)}'),
                    ],
                  ),
                  Row(
                    children: [
                      Text(cardHolder),
                      const Text('VALID\nTHRU'),
                      Text('$expYY/$expMM'),
                    ],
                  )
                ],
              ),
            ),
            Positioned(
              top: -10,
              left: -10,
              child: Container(
                height: 59.26,
                width: 65.64,
                decoration: BoxDecoration(
                    border: Border.all(
                        width: 2.5,
                        color: const Color.fromRGBO(238, 157, 42, 0.31)),
                    shape: BoxShape.rectangle,
                    borderRadius:
                        const BorderRadius.all(Radius.elliptical(250, 250))),
              ),
            ),
          ],
        ));
  }
}
