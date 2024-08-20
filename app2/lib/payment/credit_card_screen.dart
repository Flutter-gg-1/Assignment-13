import 'package:app2/home/home_screen.dart';
import 'package:app2/payment/creditCard.dart';
import 'package:app2/reusable_components/custom_btn.dart';
import 'package:app2/reusable_components/custom_txt_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/color_ext.dart';
import '../constants/validations.dart';

class CreditCardScreen extends StatefulWidget {
  const CreditCardScreen({super.key});

  @override
  State<CreditCardScreen> createState() => _CreditCardScreenState();
}

class _CreditCardScreenState extends State<CreditCardScreen> {
  final TextEditingController holderName = TextEditingController();
  final TextEditingController cardNumber = TextEditingController();
  final TextEditingController expiryDate = TextEditingController();
  final TextEditingController cvv = TextEditingController();

  CreditCard creditCard = CreditCard();

  bool showCardDetails = false;

  bool _isValidated() {
    setState(() {
      creditCard.holderName =
          Validations.fullName(holderName.text) == null ? holderName.text : '';
      creditCard.cardNum = Validations.creditCardNum(cardNumber.text) == null
          ? cardNumber.text
          : '';
      creditCard.expiry = Validations.creditCardExpiry(expiryDate.text) == null
          ? expiryDate.text
          : '';
      creditCard.cvv =
          Validations.creditCardCVV(cvv.text) == null ? cvv.text : '';
    });

    return (creditCard.holderName.isNotEmpty &&
        creditCard.cardNum.isNotEmpty &&
        creditCard.expiry.isNotEmpty &&
        creditCard.cvv.isNotEmpty);
  }

  void _navigateToHome(BuildContext context) {
    if (_isValidated()) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const HomeScreen()));
    } else {
      _showInvalidCardAlert(context);
    }
  }

  void _showInvalidCardAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          icon: const Icon(CupertinoIcons.exclamationmark_triangle_fill,
              size: 32, color: C.accent),
          title: const Text('Invalid Card Entry'),
          content: const Text(
              'Please ensure all card details are filled out correctly.'),
          actions: [
            CustomBtn(
                title: 'Dismiss', onPressed: () => Navigator.of(context).pop())
          ],
        );
      },
    );
  }

  void _toggleCardDetails() {
    _isValidated();
    showCardDetails = !showCardDetails;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: C.bg,
      ),
      backgroundColor: C.bg,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Expanded(
            child: ListView(
              children: [
                const Text(
                  'Almost There',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: [
                            Text(
                                'Please enter your credit card information for verification. You will not be charged until you subscribe to a service.'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                if (showCardDetails)
                  CardDetailsView(creditCard: creditCard)
                else
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        color: C.bg,
                        border: Border.all(
                          color: C.silver,
                          width: 1,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: C.accent.withOpacity(0.7),
                            spreadRadius: -1,
                            blurRadius: 5,
                            offset: const Offset(2, 3),
                          )
                        ]),
                    child: AspectRatio(
                      aspectRatio: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                    child: CustomTextField(
                                  txtController: holderName,
                                  hint: 'Card Holder Name',
                                  icon: CupertinoIcons.person,
                                  isObscure: false,
                                  validation: Validations.fullName,
                                ))
                              ],
                            ),
                            Row(
                              children: [
                                Expanded(
                                    child: CustomTextField(
                                  txtController: cardNumber,
                                  hint: 'Card Number',
                                  icon: CupertinoIcons.creditcard,
                                  isObscure: false,
                                  validation: Validations.creditCardNum,
                                ))
                              ],
                            ),
                            Row(
                              children: [
                                Expanded(
                                  flex: 4,
                                  child: CustomTextField(
                                    txtController: expiryDate,
                                    hint: 'Expiry',
                                    icon: CupertinoIcons.calendar,
                                    isObscure: false,
                                    validation: Validations.creditCardExpiry,
                                  ),
                                ),
                                const SizedBox(width: 16),
                                Expanded(
                                  flex: 3,
                                  child: CustomTextField(
                                    txtController: cvv,
                                    hint: 'CVV',
                                    icon: CupertinoIcons.shield,
                                    isObscure: true,
                                    validation: Validations.creditCardCVV,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                const SizedBox(height: 8),
                TextButton(
                  onPressed: _toggleCardDetails,
                  child: Row(
                    children: [
                      Icon(
                        !showCardDetails
                            ? CupertinoIcons.eye
                            : CupertinoIcons.eye_slash,
                        color: C.accent,
                        size: 18,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        !showCardDetails ? 'Show Card Data' : 'Hide',
                        style: const TextStyle(
                          color: C.accent,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                CustomBtn(
                    title: 'Next', onPressed: () => _navigateToHome(context)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CardDetailsView extends StatelessWidget {
  const CardDetailsView({super.key, required this.creditCard});

  final CreditCard creditCard;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: C.silver,
          border: Border.all(
            color: C.accent,
            width: 1,
          ),
          boxShadow: [
            BoxShadow(
              color: C.accent.withOpacity(0.7),
              spreadRadius: 3,
              blurRadius: 2,
              offset: const Offset(-3, 4),
            )
          ]),
      child: AspectRatio(
        aspectRatio: 1.5,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                creditCard.cardNum.isNotEmpty ? creditCard.cardNum : 'Invalid!',
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 24),
                child: Row(
                  children: [
                    Expanded(
                        child: Text(
                            creditCard.holderName.isNotEmpty
                                ? creditCard.holderName
                                : 'Invalid!',
                            style: const TextStyle(fontSize: 18))),
                    const Text(
                      'Valid\n thru',
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(width: 8),
                    Text(creditCard.expiry.isNotEmpty
                        ? creditCard.expiry
                        : 'Invalid!'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
