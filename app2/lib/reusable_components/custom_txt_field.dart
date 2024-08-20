import 'package:flutter/material.dart';
import '../constants/color_ext.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.txtController,
    required this.hint,
    required this.icon,
    required this.isObscure,
    required this.validation,
  });

  final TextEditingController txtController;
  final String hint;
  final IconData icon;
  final bool isObscure;
  final Function(String value) validation;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: TextFormField(
        style: const TextStyle(color: C.greyText),
        controller: txtController,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        obscureText: isObscure,
        enableSuggestions: false,
        autocorrect: false,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              width: 0,
              style: BorderStyle.none,
            ),
          ),
          fillColor: C.silver,
          filled: true,
          suffixIcon: Icon(icon),
          hintText: hint,
        ),
        validator: (value) => validation(value ?? ''),
      ),
    );
  }
}
