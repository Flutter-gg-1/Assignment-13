import 'package:assignment_13/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController myController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String? cardNumber;
  String? expiryMonthDate;
  String? expiryYearDate;
  String? cardHolderName;
  String? cvvCode;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Container(
              color: const Color.fromRGBO(203, 208, 220, 1),
              width: double.infinity,
              height: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 318,
                    height: 200,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          myTextFormField(
                              maxLength: 16,
                              hintText: 'Card number',
                              fontSize: 14,
                              fontSizeForInput: 14,
                              onSaved: (p0) {
                                cardNumber = p0;
                              },
                              inputFormatters: [
                                FilteringTextInputFormatter.allow(
                                    RegExp(r'[0-9]')),
                              ],
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter card number';
                                } else if (value.length < 16) {
                                  return 'Please enter valid card number';
                                } else {
                                  return null;
                                }
                              }),
                          const SizedBox(height: 5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                width: 115,
                                height: 40,
                                child: myTextFormField(
                                    maxLength: 2,
                                    hintText: 'Expired date (MM)',
                                    fontSize: 10,
                                    fontSizeForInput: 10,
                                    onSaved: (p0) {
                                      expiryMonthDate = p0;
                                    },
                                    inputFormatters: [
                                      FilteringTextInputFormatter.allow(
                                          RegExp(r'[0-9]')),
                                    ],
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Invalid';
                                      } else if (value.length < 2) {
                                        return 'Invalid';
                                      } else {
                                        return null;
                                      }
                                    }),
                              ),
                              SizedBox(
                                width: 115,
                                height: 40,
                                child: myTextFormField(
                                    maxLength: 2,
                                    hintText: 'Expired date (YY)',
                                    fontSize: 10,
                                    fontSizeForInput: 10,
                                    onSaved: (p0) {
                                      expiryYearDate = p0;
                                    },
                                    inputFormatters: [
                                      FilteringTextInputFormatter.allow(
                                          RegExp(r'[0-9]')),
                                    ],
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Invalid';
                                      } else if (value.length < 2) {
                                        return 'Invalid';
                                      } else {
                                        return null;
                                      }
                                    }),
                              ),
                            ],
                          ),
                          const SizedBox(height: 5),
                          myTextFormField(
                              hintText: 'Card Holder',
                              fontSize: 14,
                              fontSizeForInput: 14,
                              onSaved: (p0) {
                                cardHolderName = p0;
                              },
                              inputFormatters: [
                                FilteringTextInputFormatter.allow(
                                    RegExp(r'[a-zA-Z]')),
                              ],
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your name';
                                } else if (value.length < 3) {
                                  return 'Please enter valid name';
                                } else {
                                  return null;
                                }
                              }),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 130),
                  SizedBox(
                    width: 270,
                    height: 54,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: const WidgetStatePropertyAll<Color>(
                            Color.fromRGBO(11, 128, 243, 1)),
                        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                          const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                        ),
                      ),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState!.save();
                          print(cardNumber);
                          print(expiryMonthDate);
                          print(expiryYearDate);
                          print(cardHolderName);
                        } else {
                          print('Error');
                        }
                      },
                      child: const Text(
                        'Show card data',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 13.5,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
