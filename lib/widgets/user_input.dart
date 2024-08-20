import 'package:flutter/material.dart';

class UserInput extends StatelessWidget {
  final String label;
  final double width;
  final double height;
  final double fontSize;
  final TextEditingController controller;
  final Function validator;
  final TextInputType type;
  const UserInput({super.key,required this.label,required this.fontSize, required this.height, required this.width, required this.controller, required this.validator, required this.type});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: type,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (value){return validator(value);},
      onTapOutside: (event) {FocusManager.instance.primaryFocus?.unfocus();},
      decoration: InputDecoration(
        constraints: BoxConstraints(minWidth: width, minHeight: height, maxHeight: height, maxWidth: width),
        label: SizedBox(child: Text(label,style: TextStyle(fontSize: fontSize, color: const Color(0xffC9CBD0)))),
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
      ),
    );
  }
}