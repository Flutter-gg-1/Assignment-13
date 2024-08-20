import 'package:card_data/alert_message.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController numController = TextEditingController();
  TextEditingController monthController = TextEditingController();
  TextEditingController yearController = TextEditingController();
  TextEditingController nameController = TextEditingController();

  final key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(203, 208, 220, 1),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 180),
          child: Column(
            children: [
              Center(
                child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 29, vertical: 40),
                    height: 297.78,
                    width: 315.48,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.95)),
                    child: Form(
                      key: key,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                            height: 39.58,
                            width: 252.85,
                            child: TextFormField(
                              keyboardType:
                                  const TextInputType.numberWithOptions(),
                              controller: numController,
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              decoration: const InputDecoration(
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                  errorBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.red)),
                                  focusedErrorBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.red)),
                                  hintText: 'Card Number',
                                  hintStyle: TextStyle(
                                    fontFamily: 'Inter',
                                      fontSize: 14.66,
                                      color: Color.fromRGBO(201, 203, 208, 1)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 1.47,
                                          color:
                                              Color.fromRGBO(42, 144, 245, 1)),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(3.28)))),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Error: Card Number cannot be empty';
                                } else if (!RegExp(r'^\d+$').hasMatch(value)) {
                                  return 'Error: Must only contain numbers';
                                } else if (value.length != 16) {
                                  return 'Error: Must be 16 Digits';
                                }
                                return null;
                              },
                            ),
                          ),
                          Row(
                            children: [
                              SizedBox(
                                height: 38.83,
                                width: 119,
                                child: TextFormField(
                                  controller: monthController,
                                  keyboardType:
                                      const TextInputType.numberWithOptions(),
                                  autovalidateMode:
                                      AutovalidateMode.onUserInteraction,
                                  decoration: const InputDecoration(
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.white),
                                      ),
                                      errorBorder: UnderlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.white)),
                                      focusedErrorBorder: UnderlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.white)),
                                      hintText: 'Expired date (MM)',
                                      hintStyle: TextStyle(
                                        fontFamily: 'Inter',
                                          fontSize: 10.79,
                                          color:
                                              Color.fromRGBO(201, 203, 208, 1)),
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 1.44,
                                              color: Color.fromRGBO(
                                                  42, 144, 245, 1)),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(3.6)))),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Empty!!';
                                    } else if (!RegExp(r"^\d+$")
                                        .hasMatch(value)) {
                                      return 'Only numbers!!';
                                    } else if (value.length != 2) {
                                      return 'Two Digits!!';
                                    }
                                    return null;
                                  },
                                ),
                              ),
                              const SizedBox(
                                width: 24,
                              ),
                              SizedBox(
                                height: 38.83,
                                width: 114.33,
                                child: TextFormField(
                                  controller: yearController,
                                  keyboardType:
                                      const TextInputType.numberWithOptions(),
                                  autovalidateMode:
                                      AutovalidateMode.onUserInteraction,
                                  decoration: const InputDecoration(
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.white),
                                      ),
                                      errorBorder: UnderlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.white)),
                                      focusedErrorBorder: UnderlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.white)),
                                      hintText: 'Expired date (YY)',
                                      hintStyle: TextStyle(
                                        fontFamily: 'Inter',
                                          fontSize: 10.79,
                                          color:
                                              Color.fromRGBO(217, 217, 217, 1)),
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 1.44,
                                              color: Color.fromRGBO(
                                                  42, 144, 245, 1)),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(3.6)))),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Empty!!';
                                    } else if (!RegExp(r"^\d+$")
                                        .hasMatch(value)) {
                                      return 'Only numbers!!';
                                    } else if (value.length != 2) {
                                      return 'Two Digits!!';
                                    }
                                    return null;
                                  },
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 39.58,
                            width: 252.85,
                            child: TextFormField(
                              controller: nameController,
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              decoration: const InputDecoration(
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                  errorBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white)),
                                  focusedErrorBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white)),
                                  hintText: 'Card Holder',
                                  hintStyle: TextStyle(
                                    fontFamily: 'Inter',
                                      fontSize: 14.66,
                                      color: Color.fromRGBO(201, 203, 208, 1)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 1.47,
                                          color:
                                              Color.fromRGBO(42, 144, 245, 1)),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(3.66)))),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Error: Name cannot be empty';
                                } else if (RegExp(r'^\d+$').hasMatch(value)) {
                                  return 'Error: Must NOT contain numbers';
                                }
                                return null;
                              },
                            ),
                          ),
                        ],
                      ),
                    )),
              ),
              const SizedBox(
                height: 137,
              ),
              InkWell(
                onTap: () {
                  if (key.currentState!.validate()) {
                    setState(() {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertMessage(
                              cardNumber: numController.text,
                              expMM: monthController.text,
                              expYY: yearController.text,
                              cardHolder: nameController.text,
                            );
                          });
                    });
                  }
                },
                child: Container(
                    height: 53.11,
                    width: 269.46,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 1),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(15.62)),
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromRGBO(11, 128, 243, 1),
                            Color.fromRGBO(12, 103, 192, 1)
                          ],
                        ),
                        boxShadow: const [
                          BoxShadow(
                              offset: Offset(0, 3.12),
                              blurRadius: 3.12,
                              color: Color.fromRGBO(0, 0, 0, 0.25))
                        ]),
                    child: const Center(
                        child: Text(
                      'Show card data',
                      style: TextStyle(
                        fontFamily: 'Inter',
                          fontSize: 12.5,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ))),
              )
            ],
          ),
        ),
      ),
    );
  }
}
