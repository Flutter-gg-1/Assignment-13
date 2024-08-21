import 'package:bank_card/src/card_data/card_number_format.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

//cardNumber field
Widget cardNumber({required TextEditingController cardNumberController}) {
  return TextFormField(
    controller: cardNumberController,
    autovalidateMode: AutovalidateMode.onUserInteraction,
    decoration: InputDecoration(
      contentPadding: const EdgeInsets.all(10),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(3),
        borderSide: const BorderSide(color: Colors.blue, width: 2),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(3),
        borderSide: const BorderSide(color: Colors.blue, width: 2),
      ),
      hintText: "Card number",
      hintStyle: const TextStyle(color: Color(0xffD9D9D9), fontSize: 15),
    ),
    inputFormatters: [
      FilteringTextInputFormatter.allow(RegExp("[0-9]")),
      CardNumberFormat(),
    ],
    validator: (value) {
      if (value == null || value.isEmpty) {
        return "Please enter card number";
      }
      // Remove spaces for validation
      var cleanValue = value.replaceAll(' ', '');
      if (cleanValue.length != 16) {
        return "Card number must be 16 digits";
      }
      return null;
    },
  );
}
