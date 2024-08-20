import 'package:flutter/material.dart';

// widget of show card data button
Widget showCardData({required context}) {
  return ElevatedButton(
    onPressed: () => showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        title: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 70),
          child: Text("This is an Alert", style: TextStyle(fontSize: 30)),
        ),
        actions: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xffFB6236),
              padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 7),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(7),
              ),
              elevation: 5,
            ),
            onPressed: () => Navigator.pop(context, "Close alert"),
            child: const Text("Close alert",
                style: TextStyle(color: Colors.white, fontSize: 20)),
          ),
        ],
      ),
    ),
    style: ElevatedButton.styleFrom(
      backgroundColor: const Color(0xff2A90F5),
      padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 7),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(11),
          side: const BorderSide(
            color: Color.fromARGB(255, 255, 255, 255),
            width: 1,
          )),
      elevation: 3,
    ),
    child: const Text(
      "Show info",
      style: TextStyle(
          color: Colors.white, fontSize: 13, fontWeight: FontWeight.bold),
    ),
  );
}
//  boxShadow: [
//                   BoxShadow(
//                     color:
//                         const Color.fromARGB(255, 121, 121, 121).withOpacity(0.3),
//                     spreadRadius: 3,
//                     blurRadius: 7,
//                     offset: const Offset(0, 3),
//                   ),
//                 ]