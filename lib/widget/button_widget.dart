import 'dart:developer';
import 'dart:ui';

import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    super.key, required this.globalKey,
  });


  final GlobalKey<FormState> globalKey;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
    
      onTap: () {


        if(globalKey.currentState!.validate()){

          showDialog(context: context, builder: (context) {

            return Dialog(


              shape:  RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16)
          ),


            


              child: Container(
              
                height: 180 ,
                width:300 ,
              
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  // color: Colors.red
              
                  border: Border.all(
                    width: 2,
                    color: Color(0xff0C67C1)
                  ),
              
                  gradient: LinearGradient(
                    colors: [
                      Color(0xff2B2222).withOpacity(0.5),
                      Color(0xff6E6565).withOpacity(0.5)
                    ]
                  )
                ),
              
              
                child: Stack(

                  children: [

                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text("1265  5678  8765  4321", style: TextStyle(fontSize: 20,color: Color(0xffFFFFFF).withOpacity(0.85)),),
                        Row(
                          children: [
                            SizedBox(width: 28,),
                            Text("Aditya Singh", style: TextStyle(fontSize: 17,color: Color(0xffFFFFFF).withOpacity(0.85)),),
                            SizedBox(width: 40,),
                            Text("VALID\nTHRU", style: TextStyle(fontSize: 8,color: Color(0xffFFFFFF).withOpacity(0.85)),),
                            SizedBox(width: 10,),
                            
                            Text("11/26", style: TextStyle(fontSize: 12,color: Color(0xffFFFFFF).withOpacity(0.85)),),

                           


                          ],
                        ),
                         SizedBox(height: 20,)
                      ],
                    )


                  ],
              
                ),
              ),
            );
            
          },);

          log("very good");
        }
        log("no good");
        
      },
      child: Container(
      
        height: 50,
        width: 255,
      
        decoration: BoxDecoration(
      
          // color: Color(0xff0B80F3),
      
          gradient: const LinearGradient(
            
      
            colors:  [
              Color(0xff0B80F3), 
              Color(0xff0C67C0), 
      
            ]
          ),
      
          borderRadius: BorderRadius.circular(16)
        ),
      
        child: Center(child: Text("Show card data", style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xffF5F5F5)),)),
      ),
    );
  }
}


