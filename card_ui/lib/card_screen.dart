import 'package:card_ui/card_number_Input.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({super.key});

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  TextEditingController txtCardNumber = TextEditingController();
  TextEditingController txtCardMExpire = TextEditingController();
  TextEditingController txtCardYExpire = TextEditingController();
  TextEditingController txtCardHolder = TextEditingController();

  String cardName = "";
  String cardMExpire = "";
  String cardYExpire = "";
  String cardHolder = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffCBD0DC),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 320,
              height: 300,
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextFormField(
                    controller: txtCardNumber,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      LengthLimitingTextInputFormatter(16),
                      CardNumberInput()
                    ],
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    keyboardType: const TextInputType.numberWithOptions(),
                    decoration: InputDecoration(
                      hintStyle:
                          const TextStyle(fontSize: 15, color: Colors.black12),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.blue),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(
                          color: Colors.blue,
                        ),
                      ),
                      hintText: "Card Number",
                    ),
                    validator: (value) {
                      if (value!.length > 22 || value.length < 22) {
                        return 'Card number must be 16 digits';
                      }
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 120,
                        child: TextFormField(
                          cursorWidth: 4,
                          controller: txtCardMExpire,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                            LengthLimitingTextInputFormatter(2),
                          ],
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          decoration: InputDecoration(
                            hintStyle: const TextStyle(
                                fontSize: 10, color: Colors.black12),
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 10.0),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.blue),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: const BorderSide(
                                color: Colors.blue,
                              ),
                            ),
                            hintText: "Expired date (MM)",
                          ),
                          validator: (value) {
                            if (value!.isEmpty ||
                                int.tryParse(value.toString())! > 12) {
                              return 'Enter 1-12';
                            }
                          },
                        ),
                      ),
                      SizedBox(
                        width: 120,
                        child: TextFormField(
                          controller: txtCardYExpire,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                            LengthLimitingTextInputFormatter(2),
                          ],
                          decoration: InputDecoration(
                            hintStyle: const TextStyle(
                                fontSize: 10, color: Colors.black12),
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 10.0),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.blue),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: const BorderSide(
                                color: Colors.blue,
                              ),
                            ),
                            hintText: "Expired date (YY)",
                          ),
                          validator: (value) {
                            if (value!.isEmpty ||
                                int.tryParse(value.toString())! < 24) {
                              return "It isn't vaild";
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                  TextFormField(
                    controller: txtCardHolder,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    decoration: InputDecoration(
                      hintStyle:
                          const TextStyle(fontSize: 15, color: Colors.black12),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.blue),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(
                          color: Colors.blue,
                        ),
                      ),
                      hintText: "Card Holder",
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Card holder must be fill it';
                      }
                    },
                  ),
                ],
              ),
            ),
            Container(
              width: 270,
              height: 53,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: const LinearGradient(
                      colors: [Color(0xff0B80F3), Color(0xff0C67C0)])),
              child: const Text(
                "show card data",
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
