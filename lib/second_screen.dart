import 'package:assignment_13/common.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  final String cardNumber, cardHolderName, expiryMonthDate1, expiryYearDate1;
  const SecondScreen({
    super.key,
    required this.cardNumber,
    required this.cardHolderName,
    required this.expiryMonthDate1,
    required this.expiryYearDate1,
  });

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // show the card details
      body: Container(
        color: const Color.fromRGBO(213, 214, 218, 1),
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color.fromRGBO(155, 150, 150, 1),
                        ),
                        width: 320,
                        height: 183,
                        child: Column(
                          children: [
                            const SizedBox(height: 70),
                            myTextFormField(
                              enabled: false,
                              labelText: widget.cardNumber,
                              fontSizeLabel: 20,
                              colorLabel: Colors.white,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 150,
                                  height: 50,
                                  child: myTextFormField(
                                    enabled: false,
                                    labelText: widget.cardHolderName,
                                    fontSizeLabel: 16,
                                    colorLabel: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  width: 90,
                                  height: 50,
                                  child: myTextFormField(
                                    enabled: false,
                                    labelText: 'VALID THRU',
                                    fontSizeLabel: 10,
                                    fontSize: 10,
                                    colorLabel: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  width: 70,
                                  height: 50,
                                  child: myTextFormField(
                                    enabled: false,
                                    labelText:
                                        '${widget.expiryMonthDate1}/${widget.expiryYearDate1}',
                                    fontSizeLabel: 14,
                                    colorLabel: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const Positioned(
                        top: -70,
                        right: 250,
                        child: CircleAvatar(
                          backgroundColor: Colors.yellowAccent,
                          radius: 80,
                        ),
                      ),
                      const Positioned(
                        top: -70,
                        right: 260,
                        child: CircleAvatar(
                          backgroundColor: Color.fromRGBO(155, 150, 150, 1),
                          radius: 70,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 70),
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
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'Go Back',
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
      ),
    );
  }
}
