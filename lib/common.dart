import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Widget myTextFormField(
    {TextEditingController? controller,
    int? maxLength,
    TextInputType? keyboardType,
    String? Function(String?)? validator,
    String? hintText,
    double? fontSize,
    double? fontSizeLabel,
    double? fontSizeForInput,
    List<TextInputFormatter>? inputFormatters,
    void Function(String?)? onSaved,
    bool? enabled,
    bool? filled = false,
    Color? fillColor = Colors.transparent,
    Color? colorLabel,
    String? labelText}) {
  return SizedBox(
    width: 252,
    height: 50,
    child: TextFormField(
      enabled: enabled,
      inputFormatters: inputFormatters,
      controller: controller,
      onSaved: onSaved,
      maxLength: maxLength,
      keyboardType: keyboardType,
      validator: validator,
      style: TextStyle(color: Colors.black, fontSize: fontSizeForInput),
      decoration: InputDecoration(
        filled: filled,
        fillColor: fillColor,
        labelText: labelText,
        labelStyle: TextStyle(color: colorLabel, fontSize: fontSizeLabel),
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
