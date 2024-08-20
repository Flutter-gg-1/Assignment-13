
import 'package:bank_card_app/global.dart';
import 'package:flutter/material.dart';

class CardHolderFeild extends StatelessWidget {
  final TextEditingController controller;
  const CardHolderFeild({
    super.key, required this.controller,
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
            } else if (RegExp(r'[!@#<>?":_`~;[\]\\|=+)(*&^%0-9-]')
                .hasMatch(value)) {
              return 'invalid name';
            }
            GlobalData.cardHolder = value;
            return null;
          },
          decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            hintText: 'Card Holder',
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
        ));
  }
}
