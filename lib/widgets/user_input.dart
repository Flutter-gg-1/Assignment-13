import 'package:flutter/material.dart';

class UserInput extends StatelessWidget {
  final String label;
  final double width;
  final double height;
  final double fontSize;
  final TextEditingController controller;
  final Function validator;
  final TextInputType type;
  final int maxLength;
  const UserInput({super.key,required this.label,required this.fontSize, required this.height, required this.width, required this.controller, required this.validator, required this.type, required this.maxLength});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: type,
      maxLength: maxLength,
      autovalidateMode: AutovalidateMode.onUnfocus,
      validator: (value){return validator(value);},
      onTapOutside: (event) {FocusManager.instance.primaryFocus?.unfocus();},
      decoration: InputDecoration(
        counterText: "",
        constraints: BoxConstraints(minWidth: width,maxHeight: height,maxWidth: width),
        label: Text(label,style: TextStyle(fontSize: fontSize, color: const Color(0xffC9CBD0))),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(3.66),
          borderSide: const BorderSide(color: Color(0xff2A90F5))
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(3.66),
          borderSide: const BorderSide(color: Color(0xff2A90F5))
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(3.66),
          borderSide: const BorderSide(color: Colors.red)
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(3.66),
          borderSide: const BorderSide(color: Colors.red)
        ),
        errorStyle: const TextStyle(fontSize: 11)
      ),
    );
  }
}