import 'package:flutter/material.dart';

showAlert(BuildContext context, Map cardInfo) {
  showDialog(
    context: context,
    builder: (context) {
      return Opacity(
        opacity: 0.8,
        child: AlertDialog(
          iconPadding: const EdgeInsets.only(top: 0, left: 0),
          icon: Align(
              alignment: Alignment.topLeft,
              child: Image.asset("assets/design.png")),
          contentTextStyle: const TextStyle(),
          backgroundColor: const Color(0xff6E6565),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              side: BorderSide(color: Color(0xff0C67C1), width: 1.5)),
          content: SizedBox(
            height: 90,
            width: 320,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  cardInfo["cardNum"],
                  style: const TextStyle(fontSize: 20),
                ),
                const SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(cardInfo["cardHolder"],
                        style: const TextStyle(fontSize: 16)),
                    const SizedBox(width: 50),
                    const Text("VALID\nTHRU", style: TextStyle(fontSize: 8)),
                    const SizedBox(width: 12),
                    Text("${cardInfo["expDateMM"]}/${cardInfo["expDateYY"]}",
                        style: const TextStyle(fontSize: 12))
                  ],
                )
              ],
            ),
          ),
        ),
      );
    },
  );
}


  // Text(),
  //             