// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

// //cardNumber field
// Widget cardNumber({required TextEditingController cardNumberController}) {
//   return TextFormField(
//     controller: cardNumberController,
//     autovalidateMode: AutovalidateMode.onUserInteraction,
//     decoration: InputDecoration(
//         focusedBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(3),
//           borderSide: const BorderSide(color: Colors.blue, width: 2),
//         ),
//         enabledBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(3),
//           borderSide: const BorderSide(color: Colors.blue, width: 2),
//         ),
//         hintText: "Card number",
//         hintStyle: const TextStyle(color: Color(0xffD9D9D9), fontSize: 15)),
//     inputFormatters: [
//       FilteringTextInputFormatter.allow(RegExp("[0-9 ]")),
//     ],
//     validator: (value) {
//       if (value == null || value.isEmpty) {
//         return "Please enter card number";
//       }
//       if (value.length != 16) {
//         return "Card number must be 16 number";
//       }
//       return null;
//     },
//   );
// }
