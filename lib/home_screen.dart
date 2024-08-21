import 'package:assignment_13/common.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController myController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(202, 184, 192, 1),
      body: SafeArea(
          child: Center(
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
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter card number';
                          } else if (value.length < 16) {
                            return 'Please enter valid card number';
                          } else {
                            return null;
                          }
                        }),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: 115,
                          height: 40,
                          child: myTextFormField(
                              maxLength: 2,
                              hintText: 'Expired date (MM)',
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter card number';
                                } else if (value.length < 16) {
                                  return 'Please enter valid card number';
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
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter card number';
                                } else if (value.length < 16) {
                                  return 'Please enter valid card number';
                                } else {
                                  return null;
                                }
                              }),
                        ),
                      ],
                    ),
                    myTextFormField(
                        maxLength: 16,
                        hintText: 'Card Holder',
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter card number';
                          } else if (value.length < 16) {
                            return 'Please enter valid card number';
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
                    print(myController.text);
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
      )),
    );
  }
}
