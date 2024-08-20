import 'dart:developer';


import 'package:asg13/model/card_model.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    super.key, required this.globalKey, required this.cardModel,
  });


  final GlobalKey<FormState> globalKey;

  final CardModel cardModel;

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
                  
              
                  border: Border.all(
                    width: 2,
                    color: const Color(0xff0C67C1)
                  ),
              
                  gradient: LinearGradient(
                    colors: [
                      const Color(0xff2B2222).withOpacity(0.5),
                      const Color(0xff6E6565).withOpacity(0.5)
                    ]
                  )
                ),
              
              
                child: Stack(

                  children: [

                    Positioned(child: Image.asset("asset/Vector 2.png")),

                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(cardModel.cardNumerFormat(), style: TextStyle(fontSize: 20,color: const Color(0xffFFFFFF).withOpacity(0.85)),),
                        Row(
                          children: [
                            const SizedBox(width: 28,),
                            Text(cardModel.cardName, style: TextStyle(fontSize: 17,color: const Color(0xffFFFFFF).withOpacity(0.85)),),
                            const SizedBox(width: 40,),
                            Text("VALID\nTHRU", style: TextStyle(fontSize: 8,color: const Color(0xffFFFFFF).withOpacity(0.85)),),
                            const SizedBox(width: 10,),
                            
                            Text(cardModel.cardYearMonth(), style: TextStyle(fontSize: 12,color: const Color(0xffFFFFFF).withOpacity(0.85)),),

                           


                          ],
                        ),
                         const SizedBox(height: 20,)
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
      
          
      
          gradient: const LinearGradient(
            
      
            colors:  [
              Color(0xff0B80F3), 
              Color(0xff0C67C0), 
      
            ]
          ),
      
          borderRadius: BorderRadius.circular(16)
        ),
      
        child: const Center(child: Text("Show card data", style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xffF5F5F5)),)),
      ),
    );
  }
}


