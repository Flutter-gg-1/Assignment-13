


import 'dart:developer';

class CardModel{



   late String cardNum;

   late String cardName;
   late String cardY;
   late String cardM;

  CardModel();



  String cardYearMonth(){

    return "${cardY}/${cardM}";
  }



String cardNumerFormat(){

  String numFor = "";


  for(int i = 0 ; i < cardNum.length ; i++){
    log(numFor);

    numFor += cardNum[i];

    if((i+1) % 4 ==0  && i != cardNum.length-1){
      numFor += " ";

    }

    
  }
  return numFor;
}

}