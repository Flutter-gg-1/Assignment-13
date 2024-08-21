import 'package:bank_card/src/card_data/card_holder.dart';
import 'package:bank_card/src/card_data/card_number.dart';
import 'package:bank_card/src/card_data/expird_month.dart';
import 'package:bank_card/src/card_data/expird_year.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BankCard extends StatefulWidget {
  const BankCard({super.key});

  @override
  State<BankCard> createState() => _BankCardState();
}

class _BankCardState extends State<BankCard> {
  TextEditingController cardNumberController = TextEditingController();
  TextEditingController expierdMController = TextEditingController();
  TextEditingController expierdYController = TextEditingController();
  TextEditingController cardHolderController = TextEditingController();

  Map<String, String> get data {
    return {
      "cardNumber": cardNumberController.text,
      "expierdMonth": expierdMController.text,
      "expierdYear": expierdYController.text,
      "cardHolder": cardHolderController.text,
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 217, 227, 237),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 210),
        child: Column(
          children: [
            Container(
              height: 320,
              width: 340,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 30, right: 30, top: 50),
                    child: Column(
                      children: [
                        cardNumber(cardNumberController: cardNumberController),
                        const SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: expirdMonth(
                                expierdMController: expierdMController,
                              ),
                            ),
                            const SizedBox(width: 20),
                            Expanded(
                              child: expirdYear(
                                expierdYController: expierdYController,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 30),
                        cardHolder(cardHolderController: cardHolderController),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 100),
            Container(
              height: 55,
              width: 260,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                border: Border.all(color: Colors.white, width: 2),
                gradient: const LinearGradient(
                  colors: [Color(0xff0B80F3), Color(0xff0C67C0)],
                ),
                boxShadow: [
                  BoxShadow(
                    color:
                        const Color.fromARGB(255, 35, 35, 35).withOpacity(0.3),
                    spreadRadius: 1,
                    blurRadius: 3,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: ElevatedButton(
                onPressed: () {
                  showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      backgroundColor: const Color.fromARGB(154, 255, 255, 255),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      contentPadding: EdgeInsets.zero,
                      content: Stack(
                        children: [
                          Container(
                            height: 200,
                            width: 350,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: const Color(0xff0C67C1),
                                width: 2.0,
                              ),
                              gradient: const LinearGradient(
                                colors: [
                                  Color.fromARGB(180, 43, 34, 34),
                                  Color.fromARGB(180, 110, 101, 101)
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 20, bottom: 10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "${data["cardNumber"]}",
                                    style: GoogleFonts.istokWeb(
                                        fontSize: 24,
                                        color: Colors.white.withOpacity(0.8)),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "${data["cardHolder"]}",
                                        style: GoogleFonts.istokWeb(
                                            fontSize: 16,
                                            color:
                                                Colors.white.withOpacity(0.8)),
                                      ),
                                      const SizedBox(width: 80),
                                      Text(
                                        " VALID \n THRU",
                                        style: GoogleFonts.istokWeb(
                                            fontSize: 11,
                                            color:
                                                Colors.white.withOpacity(0.8)),
                                      ),
                                      const SizedBox(width: 10),
                                      Text(
                                        "${data["expierdMonth"]}/${data["expierdYear"]}",
                                        style: GoogleFonts.istokWeb(
                                            fontSize: 12,
                                            color:
                                                Colors.white.withOpacity(0.8)),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            top: 0,
                            left: 0,
                            child: Image.asset(
                              "assets/Vector 2.png",
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                ),
                child: const Text(
                  "Show Card data",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
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
