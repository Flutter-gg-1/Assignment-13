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
        backgroundColor: Colors.white.withOpacity(0.6),
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
              child: Padding(
                padding: const EdgeInsets.only(left: 18, bottom: 15, top: 110),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          cardNumber.substring(0, 4),
                          style: const TextStyle(fontFamily: 'Istok',fontSize: 20, color: Colors.white, letterSpacing: 1),
                        ),
                        Text(
                          '  ${cardNumber.substring(4, 8)}',
                          style: const TextStyle(fontFamily: 'Istok',fontSize: 20, color: Colors.white, letterSpacing: 1),
                        ),
                        Text(
                          '  ${cardNumber.substring(8, 12)}',
                          style: const TextStyle(fontFamily: 'Istok',fontSize: 20, color: Colors.white, letterSpacing: 1),
                        ),
                        Text(
                          '  ${cardNumber.substring(12, 16)}',
                          style: const TextStyle(fontFamily: 'Istok',fontSize: 20, color: Colors.white, letterSpacing: 1),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          cardHolder,
                          style: const TextStyle(fontFamily: 'Istok',fontSize: 16, color: Colors.white, letterSpacing: 1),
                        ),
                        const SizedBox(width: 40,),
                       const Column(
                        children: [
                         Text(
                          'VALID',
                          style: TextStyle(fontFamily: 'Istok',fontSize: 8, color: Colors.white, letterSpacing: 1),
                        ),
                        SizedBox(height: 2,),
                         Text(
                          'THRU',
                          style: TextStyle(fontFamily: 'Istok',fontSize: 8, color: Colors.white, letterSpacing: 1),
                        ),
                       ],),
                        const SizedBox(width: 15),
                        Text(
                          '$expYY/$expMM',
                          style: const TextStyle(fontFamily: 'Istok',fontSize: 12, color: Colors.white, letterSpacing: 1),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              top: -40,
              left: -40,
              child: Container(
                height: 100,
                width: 120,
                decoration: BoxDecoration(
                  border: Border.all(
                      width: 2.5,
                      color: const Color.fromRGBO(238, 157, 42, 0.31)),
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ],
        ));
  }
}
