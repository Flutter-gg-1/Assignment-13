
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget showCardData({
  required BuildContext context,
  required Map<String, String> data,
}) {
  return Container(
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
          color: const Color.fromARGB(255, 35, 35, 35).withOpacity(0.3),
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
                    padding: const EdgeInsets.only(left: 20, bottom: 10),
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
                                  color: Colors.white.withOpacity(0.8)),
                            ),
                            const SizedBox(width: 80),
                            Text(
                              " VALID \n THRU",
                              style: GoogleFonts.istokWeb(
                                  fontSize: 11,
                                  color: Colors.white.withOpacity(0.8)),
                            ),
                            const SizedBox(width: 10),
                            Text(
                              "${data["expierdMonth"]}/${data["expierdYear"]}",
                              style: GoogleFonts.istokWeb(
                                  fontSize: 12,
                                  color: Colors.white.withOpacity(0.8)),
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
  );
}
