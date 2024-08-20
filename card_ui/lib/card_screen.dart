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

  String cardNumber = "";
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
                    onChanged: (value) => setState(() {
                      cardNumber = value;
                    }),
                    validator: (value) {
                      if (value!.length > 22 || value.length < 22) {
                        return 'Card number must be 16 digits';
                      }
                      return null;
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
                          keyboardType: const TextInputType.numberWithOptions(),
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
                          onChanged: (value) => setState(() {
                            cardMExpire = value;
                          }),
                          validator: (value) {
                            if (value!.isEmpty ||
                                int.tryParse(value.toString())! > 12 ||
                                int.tryParse(value.toString())! == 0) {
                              return 'Enter 1-12';
                            }
                            return null;
                          },
                        ),
                      ),
                      SizedBox(
                        width: 120,
                        child: TextFormField(
                          controller: txtCardYExpire,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          keyboardType: const TextInputType.numberWithOptions(),
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
                          onChanged: (value) => setState(() {
                            cardYExpire = value;
                          }),
                          validator: (value) {
                            if (value!.isEmpty ||
                                int.tryParse(value.toString())! < 24) {
                              return "It isn't vaild";
                            }
                            return null;
                          },
                        ),
                      ),
                    ],
                  ),
                  TextFormField(
                    controller: txtCardHolder,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(RegExp("[a-zA-Z]")),
                    ],
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
                    onChanged: (value) => setState(() {
                      cardHolder = value;
                    }),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Card holder must be fill it';
                      }
                      return null;
                    },
                  ),
                ],
              ),
            ),
            ShowCard(
                cardName: cardHolder,
                cardNumber: cardNumber,
                cardExprireM: cardMExpire,
                cardExprireY: cardYExpire)
          ],
        ),
      ),
    );
  }
}

class ShowCard extends StatelessWidget {
  final String cardName;
  final String cardNumber;
  final String cardExprireM;
  final String cardExprireY;

  const ShowCard(
      {super.key,
      required this.cardName,
      required this.cardNumber,
      required this.cardExprireM,
      required this.cardExprireY});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 270,
      height: 53,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xff0B80F3),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        onPressed: () {
          if (cardName.isEmpty ||
              cardNumber.isEmpty ||
              cardExprireM.isEmpty ||
              cardExprireY.isEmpty) {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                backgroundColor: Colors.red,
                content: Center(
                  child: Text(
                    "Please fill the fields",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                )));
          }
          if (int.parse(cardExprireM) > 12 ||
              int.parse(cardExprireM) <= 0 ||
              int.parse(cardExprireY) < 24 ||
              int.parse(cardExprireY) <= 0 ||
              cardNumber.length < 22) {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                backgroundColor: Colors.red,
                content: Center(
                  child: Text(
                    "Please make sure for entry fields",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                )));
          } else {
            showDialog<String>(
              context: context,
              builder: (BuildContext context) => AlertDialog(
                backgroundColor: Colors.transparent,
                actions: <Widget>[
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset(
                        "assets/card.png",
                        alignment: Alignment.center,
                        width: 330,
                        fit: BoxFit.contain,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const SizedBox(
                            height: 50,
                          ),
                          Text(
                            cardNumber,
                            style: const TextStyle(
                                color: Colors.white, fontSize: 20),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const SizedBox(
                                width: 30,
                              ),
                              Text(
                                "  $cardName",
                                style: const TextStyle(color: Colors.white),
                              ),
                              const SizedBox(
                                width: 70,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Text(
                                    "VALID",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 10),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "$cardExprireM / $cardExprireY",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 10),
                                  )
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            );
          }
        },
        child: const Text(
          'Show Dialog',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
