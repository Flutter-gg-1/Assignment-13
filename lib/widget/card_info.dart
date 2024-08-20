
import 'package:bank_card_app/global.dart';
import 'package:flutter/material.dart';
import 'package:u_credit_card/u_credit_card.dart';

class CardInfo extends StatelessWidget {
  const CardInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: const EdgeInsets.all(0),
      content: CreditCardUi(
        cardHolderFullName: GlobalData.cardHolder,
        cardNumber: GlobalData.cardNumber,
        validThru: '${GlobalData.cardMonth}/${GlobalData.cardYear}',
        topLeftColor: Colors.blue,
        doesSupportNfc: true,
        placeNfcIconAtTheEnd: true,
        showValidFrom: false,
        width: double.infinity,
      ),
    );
  }
}
