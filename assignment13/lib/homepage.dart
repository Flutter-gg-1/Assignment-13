import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {


   String cardNumber='';
   String expiryDate='';
   String expiryYear='';
   String cardHolder='';
  final cardNumberController = TextEditingController();
  final expiryDateController = TextEditingController();
  final expiryYearController = TextEditingController();
  final cardHoldeerController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 203, 208, 220),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(30, 200, 30, 100),
              padding: const EdgeInsets.fromLTRB(20, 40, 20, 50),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.circular(10), 
              ),
              child: Column(
                children: [
                  TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    style: const TextStyle(),
                    controller: cardNumberController, 
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Color.fromARGB(255, 255, 255, 255),
                      label: Text('Card number', style: TextStyle(color: Color.fromARGB(63, 0, 0, 0), fontSize: 14),),
                      border: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 42, 143, 245),
                          width: 2.0,
                        ),
                      )
                    ),
                    validator: (text) {
                      if(text!.length!=16){
                        return "Card number must be 16 numbers!";
                      }
                      cardNumber = cardNumberController.text;
                      return null;
                    },
                  ),
                  const SizedBox(height: 30,),
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          style: const TextStyle(),
                          controller: expiryDateController,
                          decoration: const InputDecoration(
                            filled: true,
                            fillColor: Color.fromARGB(255, 255, 255, 255),
                            label: Text('Expired date (MM)', style: TextStyle(color: Color.fromARGB(63, 0, 0, 0), fontSize: 11)),
                            border: OutlineInputBorder(),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromARGB(255, 42, 143, 245),
                                width: 2.0,
                              ),
                            )
                          ),
                          validator: (text) {
                            if(text!.isEmpty){
                              return "Please enter expired date month";
                            }
                            expiryDate=expiryDateController.text;
                            return null;
                          },
                        ),
                      ),
                      const SizedBox(width: 12,),
                       Expanded(
                        child: TextFormField(
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          style: const TextStyle(),
                          controller: expiryYearController,
                          decoration: const InputDecoration(
                            filled: true,
                            fillColor: Color.fromARGB(255, 255, 255, 255),
                            label: Text('Expired date (YY)', style: TextStyle(color: Color.fromARGB(63, 0, 0, 0), fontSize: 11),),
                            border: OutlineInputBorder(),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromARGB(255, 42, 143, 245),
                                width: 2.0,
                              ),
                            )
                          ),
                          validator: (text) {
                            if(text!.isEmpty){
                              return "Please enter expired date year";
                            }
                            expiryYear=expiryYearController.text;
                            return null;
                          },
                        ),
                      ),
                    ]
                  ),
                  const SizedBox(height: 30,),
                    TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    style: const TextStyle(),
                    controller: cardHoldeerController, 
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Color.fromARGB(255, 255, 255, 255),
                      label: Text('Card Holder', style: TextStyle(color: Color.fromARGB(63, 0, 0, 0), fontSize: 14),),
                      border: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 42, 143, 245),
                          width: 2.0,
                        ),
                      )
                    ),
                    validator: (text) {
                      if (text!.isEmpty){
                        return "Please enter a Card Holder name";
                      }
                      else if (text.contains(RegExp(r'[0-9]'))){
                        return "Please enter a name with letters only";
                      }
                      cardHolder = cardHoldeerController.text;
                      return null;
                    },
                  ),
                ],
              ),
            ),
            Container(
              width: 250,
              height: 50,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), 
                  side: const BorderSide(color: Color.fromARGB(255, 255, 255, 255), width: 2), 
                ),
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Color.fromARGB(255, 72, 148, 210), Color.fromARGB(255, 11, 87, 186), Color.fromARGB(255, 15, 72, 147)],
                ),
              ),
              child: MaterialButton(
                child: const Text(
                  'Show card data',
                  style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
                ),
                onPressed: () {
showDialog(
  context: context,
  builder: (BuildContext context) {
    return AlertDialog(
      elevation: 0,
      backgroundColor: const Color.fromARGB(215, 120, 120, 126),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: const BorderSide(color: Color.fromARGB(255, 42, 143, 245), width: 2),
      ),
      title: const Text(''),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row( 
            mainAxisAlignment: MainAxisAlignment.start,  
            children: [
              Text(
                cardNumber.replaceAllMapped(RegExp(r'.{4}'), (match) => '${match.group(0)} '),
                style: const TextStyle(color: Color.fromARGB(255, 255, 255, 255), fontSize: 20),
              ),
            ],
          ),
           Row( 
            mainAxisAlignment: MainAxisAlignment.start,  
            children: [
              Text(
                cardHolder,
                style: const TextStyle(color: Color.fromARGB(255, 255, 255, 255), fontSize: 16),
              ),
              Spacer(),
              const Text(
                "VALID \nTHRU",
                style: TextStyle(color: Color.fromARGB(255, 255, 255, 255), fontSize: 10),
              ),
               Text(
                "$expiryDate / $expiryYear",
                style: TextStyle(color: Color.fromARGB(255, 255, 255, 255), fontSize: 12),
              ),
              SizedBox(width: 15,)
            ],
          ),
        ],
      ),
    );
  },
);
                },
              ),
            )
          ],
        )
      ),
    );
  }
}