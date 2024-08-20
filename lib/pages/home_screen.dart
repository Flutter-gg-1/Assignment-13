import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController cardNumber = TextEditingController();
  TextEditingController expDateY = TextEditingController();
  TextEditingController expDateM = TextEditingController();
  TextEditingController cardHolder = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffcbd0dc),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            Container(
              height: 297.78,
              width: 315.48,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.95)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 31),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    Container(
                      width: 252.85,
                      height: 39.58,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3.66),
                          border: Border.all(
                              width: 2, color: const Color(0xff2A90F5))),
                      child: TextFormField(
                        controller: cardNumber,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        decoration: const InputDecoration(
                            contentPadding:
                                EdgeInsets.only(left: 13.19, bottom: 12.18),
                            hintStyle: TextStyle(
                                fontSize: 15.66,
                                fontWeight: FontWeight.w400,
                                color: Color(0xffC9CBD0)),
                            hintText: "Card number",
                            enabledBorder: InputBorder.none),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter a value';
                          }
                          if (value.length != 16) {
                            return 'Enter 16 numbers only';
                          }
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 39.42,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 114.33,
                          height: 38.83,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3.66),
                              border: Border.all(
                                  width: 2, color: const Color(0xff2A90F5))),
                          child: TextFormField(
                            controller: expDateM,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            decoration: const InputDecoration(
                                contentPadding:
                                    EdgeInsets.only(left: 10.19, bottom: 18.18),
                                hintStyle: TextStyle(
                                    fontSize: 10.66,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xffC9CBD0)),
                                hintText: "Expired date (MM)",
                                enabledBorder: InputBorder.none),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter a value';
                              }
                            },
                          ),
                        ),
                        const SizedBox(
                          width: 24.19,
                        ),
                        Container(
                          width: 114.33,
                          height: 38.83,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3.66),
                              border: Border.all(
                                  width: 2, color: const Color(0xff2A90F5))),
                          child: TextFormField(
                            controller: expDateY,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            decoration: const InputDecoration(
                                contentPadding:
                                    EdgeInsets.only(left: 10.19, bottom: 18.18),
                                hintStyle: TextStyle(
                                    fontSize: 11.66,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xffC9CBD0)),
                                hintText: "Expired date (YY)",
                                enabledBorder: InputBorder.none),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter a value';
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 39.17,
                    ),
                    Container(
                      width: 252.85,
                      height: 39.58,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3.66),
                          border: Border.all(
                              width: 2, color: const Color(0xff2A90F5))),
                      child: TextFormField(
                        controller: cardHolder,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: const InputDecoration(
                            contentPadding:
                                EdgeInsets.only(left: 13.19, bottom: 12.18),
                            hintStyle: TextStyle(
                                fontSize: 15.66,
                                fontWeight: FontWeight.w400,
                                color: Color(0xffC9CBD0)),
                            hintText: "Card Holder",
                            enabledBorder: InputBorder.none),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter a value';
                          }
                          if (RegExp(r'[0-9]').hasMatch(value)) {
                            return 'Input should not contain numbers';
                          }
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 130,
            ),
            GestureDetector(
              onTap: () {
                String formattedOutput = '';
                for (int i = 0; i < cardNumber.text.length; i++) {
                  if (i > 0 && i % 4 == 0) {
                    formattedOutput += '    ';
                  }
                  formattedOutput += cardNumber.text[i];
                }
                showDialog(
                    context: context,
                    builder: (context) => Opacity(
                          opacity: 0.5,
                          child: AlertDialog(
                            contentPadding: EdgeInsets.zero,
                            content: Container(
                              width: 320,
                              height: 183.25,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(
                                      width: 2, color: const Color(0xff0C67C1)),
                                  gradient: const LinearGradient(colors: [
                                    Color(0xff2B2222),
                                    Color(0xff6E6565)
                                  ])),
                              child: Padding(
                                padding: const EdgeInsets.all(19.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        formattedOutput,
                                        style: const TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xccFFFFFF)),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            cardHolder.text,
                                            style: const TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400,
                                                color: Color(0xccFFFFFF)),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 58,
                                        ),
                                        const Text(
                                          "VALID \nTHRU",
                                          style: TextStyle(
                                              fontSize: 8,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xccFFFFFF)),
                                        ),
                                        const SizedBox(
                                          width: 8,
                                        ),
                                        Text(
                                          "${expDateM.text}/${expDateY.text}",
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xccFFFFFF)),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ));
              },
              child: Container(
                height: 53.11,
                width: 269.46,
                decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                          blurRadius: 3,
                          offset: Offset(0, 3.12),
                          color: Colors.black38)
                    ],
                    borderRadius: BorderRadius.circular(15.62),
                    gradient: const LinearGradient(
                        colors: [Color(0xff0B80F3), Color(0xff0C67C0)]),
                    border: Border.all(width: 1, color: Colors.white)),
                child: const Center(
                  child: Text(
                    "Show card data",
                    style: TextStyle(
                        fontSize: 12.5,
                        fontWeight: FontWeight.w700,
                        color: Color(0xffF5F5F5)),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
