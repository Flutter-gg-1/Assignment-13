import 'package:assignment13/src/format_card_number_function.dart';
import 'package:flutter/material.dart';

void showCreditCardDetails(BuildContext context, String cardNumber, String cardHolder, String month, String year){
  showDialog(context: context, builder: (context){
    return  Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        backgroundColor: Colors.transparent,
        child:  Stack(
          children: [
            Positioned(
              bottom: 130,
              left: -20,
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(45),
                  color: Colors.transparent,
                  border: Border.all(color: Color(0xffEE9D2A))
                ),
              ),
            ),
            Container(
              height: 183.25,
              width: 320,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Color(0xff0C67C1)),
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 5,
                    blurStyle: BlurStyle.outer
                  )
                ],
                gradient: LinearGradient(colors: [const Color(0xff2B2222).withOpacity(0.5), const Color(0xff6E6565).withOpacity(0.5)])
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(formatCardNumber(cardNumber), style: const TextStyle(fontSize: 20, color: Colors.white), ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(cardHolder, style: const TextStyle(color: Colors.white, fontSize: 16)),
                      const Text("VALID\nTHRU", style: TextStyle(color: Colors.white, fontSize: 8),),
                      Text("$month/$year", style: const TextStyle(color: Colors.white, fontSize: 12)),
                    ],
                  ),
                  const SizedBox(height: 30,)
                ],
              ),
            ),
          ],
        ),
    );
  });
}