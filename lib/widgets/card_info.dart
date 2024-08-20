import 'package:flutter/material.dart';

class CardInfo extends StatelessWidget {
  final String cardNumber;
  final String expireMonth;
  final String expireYear;
  final String cardHolder;
  const CardInfo({super.key, required this.cardHolder, required this.cardNumber, required this.expireMonth, required this.expireYear});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      contentPadding: const EdgeInsets.all(0),
      content: Container(
        width: 320,
        height: 183.25,
        padding: EdgeInsets.only(bottom: 15),
        decoration: BoxDecoration(
          color: Colors.red,
          border: Border.all(color: const Color(0xff0C67C1), width: 2),
          borderRadius: BorderRadius.circular(15),
          gradient: const LinearGradient(stops: [0.001,0.5],begin: Alignment.topLeft,colors: [Color(0xff2B2222),Color(0xff6E6565)])
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text('${cardNumber.substring(0,4)}  ${cardNumber.substring(4,8)}  ${cardNumber.substring(8,12)}  ${cardNumber.substring(12)}',
              style: const TextStyle(color: Colors.white, fontSize: 20, fontFamily: 'Istok Web')),
            SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(cardHolder, style: const TextStyle(fontFamily: "Istok Web",color: Colors.white, fontSize: 16),),
                Row(
                  children: [
                    const Text('VALID\nTHRU', style: TextStyle(fontFamily: "Istok Web",fontSize: 8, color: Colors.white),),
                    SizedBox(width: 10,),
                    Text('$expireMonth/${expireYear.substring(2)}', style: const TextStyle(fontFamily: "Istok Web",fontSize: 12, color: Colors.white),),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}