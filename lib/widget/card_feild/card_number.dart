import 'package:bank_card_app/global.dart';
import 'package:flutter/material.dart';

class CardNumberFeild extends StatelessWidget {
  final TextEditingController controller;
  const CardNumberFeild({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      child: TextFormField(
        controller: controller,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: (value) {
          if (value!.isEmpty) {
            return 'Empty value';
          } else if (RegExp(r'[!@#<>?":_`~;[\]\\|=+)(*&^%A-Z-a-z-]')
              .hasMatch(value)) {
            return 'invalid number';
          } else if (value.length < 16 || value.length > 16) {
            return 'invalid number';
          }
          GlobalData.cardNumber = value;
          return null;
        },
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          hintText: 'Card number',
          hintStyle: const TextStyle(fontSize: 14, color: Color(0xFFC9CBD0)),
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(width: 2, color: Colors.blue),
              borderRadius: BorderRadius.circular(4)),
          focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(width: 2, color: Colors.blue),
              borderRadius: BorderRadius.circular(4)),
          errorBorder: OutlineInputBorder(
              borderSide: const BorderSide(width: 2, color: Colors.red),
              borderRadius: BorderRadius.circular(4)),
        ),
      ),
    );
  }
}
