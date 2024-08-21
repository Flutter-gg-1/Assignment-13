import 'package:flutter/material.dart';

Widget myTextFormField(
    {TextEditingController? controller,
    int? maxLength,
    TextInputType? keyboardType,
    String? Function(String?)? validator,
    String? hintText}) {
  return SizedBox(
    width: 252,
    height: 50,
    child: TextFormField(
      controller: controller,
      maxLength: maxLength,
      keyboardType: keyboardType,
      validator: validator,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.grey),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(3),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blue),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blue),
        ),
      ),
    ),
  );
}
