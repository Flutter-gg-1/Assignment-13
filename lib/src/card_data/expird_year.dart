import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// expirdYear field
Widget expirdYear({required TextEditingController expierdYController}) {
  return TextFormField(
      controller: expierdYController,
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
          hintText: "Expired date (YY)",
          hintStyle: const TextStyle(color: Color(0xffD9D9D9), fontSize: 11)),
      inputFormatters: [
        FilteringTextInputFormatter.allow(RegExp("[0-9 ]")),
      ],
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "Please enter month";
        }
        if (value.length != 2) {
          return "Month must be 2 number";
        }
        return null;
      });
}
