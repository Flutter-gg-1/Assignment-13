import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Widget myTextFormField(
    {TextEditingController? controller,
    int? maxLength,
    TextInputType? keyboardType,
    String? Function(String?)? validator,
    String? hintText,
    double? fontSize,
    List<TextInputFormatter>? inputFormatters}) {
  return SizedBox(
    width: 252,
    height: 50,
    child: TextFormField(
      inputFormatters:  inputFormatters,
      controller: controller,
      maxLength: maxLength,
      keyboardType: keyboardType,
      validator: validator,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.grey, fontSize: fontSize),
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
