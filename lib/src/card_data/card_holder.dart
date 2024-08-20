import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// cardHolder field
Widget cardHolder({required TextEditingController cardHolderController}) {
  return TextFormField(
      controller: cardHolderController,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(3),
            borderSide: const BorderSide(color: Colors.blue, width: 2),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(3),
            borderSide: const BorderSide(color: Colors.blue, width: 2),
          ),
          hintText: "Card Holder",
          hintStyle: const TextStyle(color: Color(0xffD9D9D9), fontSize: 15)),
      inputFormatters: [
        FilteringTextInputFormatter.allow(RegExp("[a-zA-Z ]")),
      ],
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "Please enter month";
        }
        return null;
      });
}
