import 'package:asg13/global.dart';
import 'package:asg13/widget/button_widget.dart';
import 'package:asg13/widget/tex_field_widget.dart';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
 const  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<FormState> globalKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffCBD0DC),
      body: Form(
        key: globalKey,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // const Spacer(
              //   flex: 1,
              // ),

              SizedBox(height:145 ,),
              Center(
                child: Container(
                  height: 310,
                  width: 315,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color(0xffFFFFFF)),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 35,
                      ),
                      TexFieldWidget(
                        hintTex: "Card number",
                        validMethod: (value) {
                          if (value == null || value.isEmpty) {
                             texHightG = 70;
                             setState(() {
                               
                             });
                            return 'no tex';
                          }
                          if (value.length != 16) {
                             texHightG = 70;
          
                             setState(() {
                               
                             });
                            return '16 num';
                          }
                          if (!RegExp(r'^[0-9]+$').hasMatch(value)) {
                            texHightG = 70;
                            setState(() {
                              
                            });
                            return 'no String';
                          }
                          setState(() {
                            
                          });
                          texHightG = 48;
                          setState(() {
                            
                          });
                        },
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 20,
                          ),
                          TexFieldWidget(
                            hintSize: 11,
                            hintTex: "Expired date (MM)",
                            wid: 130,
                            validMethod: (value) {
                              if (value == null || value.isEmpty) {
                                 texHightG = 70;
                                 setState(() {
                                   
                                 });
          
                                return 'no tex';
                              }
          
                              texHightG = 48;
                              setState(() {
                                
                              });
                            },
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          TexFieldWidget(
                            hintSize: 11,
                            hintTex: "Expired date (YY)",
                            wid: 130,
                            validMethod: (value) {
                              if (value == null || value.isEmpty) {
                                 texHightG = 70;
                                 setState(() {
                                   
                                 });
                                return 'no tex';
                              }
                              texHightG = 48;
                              setState(() {
                                
                              });
                            },
                          ),
                          // TexFieldWidget()
                        ],
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      TexFieldWidget(
                        hintTex: "Card Holder",
                        validMethod: (value) {
                          if (value == null || value.isEmpty) {
                             texHightG = 70;
                             setState(() {
                               
                             });
                            return 'no tex';
                          }
                          if (!RegExp(r'^[a-zA-Z\s]+$').hasMatch(value)) {
                             texHightG = 70;
                             setState(() {
                               
                             });
                            return 'no num';
                          }
                          texHightG = 48;
                          setState(() {
                            
                          });
                        },
                      )
                    ],
                  ),
                ),
              ),
              
              const SizedBox(
                height: 120,
              ),
               ButtonWidget(globalKey: globalKey,),
              const SizedBox(
                height: 200,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
