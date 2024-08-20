import 'package:flutter/material.dart';

class UserInput extends StatelessWidget {
  final String label;
  final double width;
  final double height;
  final double fontSize;
  const UserInput({super.key,required this.label,required this.fontSize, required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: TextFormField(
        onTapOutside: (event) {FocusManager.instance.primaryFocus?.unfocus();},
        decoration: InputDecoration(
          label: Text(label,style: TextStyle(fontSize: fontSize, color: const Color(0xffC9CBD0))),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(3.66),
            borderSide: const BorderSide(color: Color(0xff2A90F5))
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(3.66),
            borderSide: const BorderSide(color: Color(0xff2A90F5))
          ),
        ),
      ),
    );
  }
}