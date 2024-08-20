import 'package:bank_card_app/global.dart';
import 'package:flutter/material.dart';

class DateFeild extends StatelessWidget {
  final TextEditingController controller;
  final bool isMonth;
  const DateFeild({
    super.key,
    required this.controller, required this.isMonth,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 114,
      child: TextFormField(
        controller: controller,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: (value) {
          if (value!.isEmpty) {
            return 'Empty value';
          } else if (RegExp(r'[!@#<>?":_`~;[\]\\|=+)(*&^%A-Z-a-z-]')
              .hasMatch(value)) {
            return 'invalid date';
          } else if (value.length < 2 || value.length > 2) {
            return 'invalid date';
          }
          isMonth? GlobalData.cardMonth = value :GlobalData.cardYear = value ;
          return null;
        },
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          hintText: isMonth? 'Expired date (MM)':'Expired date (YY)',
          hintStyle: const TextStyle(
              fontSize: 10, color: Color(0xFFC9CBD0), height: 2),
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
