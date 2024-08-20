import 'package:asg13/global.dart';
import 'package:flutter/material.dart';

class TexFieldWidget extends StatelessWidget {
  const TexFieldWidget({
    super.key,  this.wid =240, required this.hintTex,  this.hintSize  = 16, required this.validMethod,
  });

  final double wid;
  final String hintTex;
  final double hintSize;

  final String? Function(String?)?  validMethod;



  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: wid,
      height: texHightG,
      child: TextFormField(


        validator: validMethod ,


        
        decoration:  InputDecoration(

          errorMaxLines: 1,
          hintText: hintTex,
          hintStyle:  TextStyle(fontSize: hintSize,color: const Color(0xffC9CBD0)),
          border: const OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xff2A90F5), width: 2)),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xff2A90F5), width: 2),
          ),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xff2A90F5), width: 2)),
        ),
      ),
    );
  }
}
