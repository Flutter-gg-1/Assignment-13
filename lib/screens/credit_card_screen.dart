import 'package:assignment13/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CreditCardScreen extends StatefulWidget {
  const CreditCardScreen({super.key});

  @override
  State<CreditCardScreen> createState() => _CreditCardScreenState();
}

class _CreditCardScreenState extends State<CreditCardScreen> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController cardNumberController = TextEditingController();
  TextEditingController mmDateController = TextEditingController();
  TextEditingController yyDateController = TextEditingController();
  TextEditingController cardHolderController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 320,
                width: 300,
                child: Card(
                  color: Colors.white,
                  elevation: 0,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        TextFormField(
                          controller: cardNumberController,
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: AppColors.TextFormFieldBorder),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              floatingLabelStyle: TextStyle(
                                  color: AppColors.TextFormFieldBorder),
                              focusColor: AppColors.TextFormFieldBorder,
                              labelText: 'Card Number',
                              hintText: 'XXXX XXXX XXXX XXXX',
                              hintStyle: TextStyle(
                                  fontSize: 14.66, color: AppColors.labelColor),
                              labelStyle: TextStyle(
                                  fontSize: 14.66, color: AppColors.labelColor),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              errorBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: AppColors.errorText),
                                  borderRadius: BorderRadius.circular(10)),
                              focusedErrorBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: AppColors.errorText),
                                  borderRadius: BorderRadius.circular(10)),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: AppColors.TextFormFieldBorder),
                                borderRadius: BorderRadius.circular(10),
                              )),
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                            LengthLimitingTextInputFormatter(16),
                          ],
                          textInputAction: TextInputAction.next,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your card number';
                            } else if (value.length != 16) {
                              return 'Card number must be 16 digits';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 20),
                        Row(
                          children: [
                            Expanded(
                              child: TextFormField(
                                controller: mmDateController,
                                decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: AppColors.TextFormFieldBorder),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    floatingLabelStyle: TextStyle(
                                        color: AppColors.TextFormFieldBorder),
                                    focusColor: AppColors.TextFormFieldBorder,
                                    labelText: 'Expiry Date (MM)',
                                    hintText: '09',
                                    hintStyle: TextStyle(
                                        fontSize: 10.79,
                                        color: AppColors.labelColor),
                                    labelStyle: TextStyle(
                                        fontSize: 10.79,
                                        color: AppColors.labelColor),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: AppColors.errorText),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: AppColors.TextFormFieldBorder),
                                      borderRadius: BorderRadius.circular(10),
                                    )),
                                keyboardType: TextInputType.number,
                                inputFormatters: [
                                  FilteringTextInputFormatter.digitsOnly,
                                  LengthLimitingTextInputFormatter(2),
                                ],
                                textInputAction: TextInputAction.next,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter the expiry month';
                                  } else if (int.tryParse(value) == null ||
                                      int.parse(value) < 1 ||
                                      int.parse(value) > 12) {
                                    return 'Invalid month';
                                  }
                                  return null;
                                },
                              ),
                            ),
                            const SizedBox(width: 20),
                            Expanded(
                              child: TextFormField(
                                controller: yyDateController,
                                decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: AppColors.TextFormFieldBorder),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    floatingLabelStyle: TextStyle(
                                        color: AppColors.TextFormFieldBorder),
                                    focusColor: AppColors.TextFormFieldBorder,
                                    labelText: 'Expiry Date (YY)',
                                    hintText: '22',
                                    hintStyle: TextStyle(
                                        fontSize: 10.79,
                                        color: AppColors.labelColor),
                                    labelStyle: TextStyle(
                                        fontSize: 10.79,
                                        color: AppColors.labelColor),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: AppColors.errorText),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: AppColors.TextFormFieldBorder),
                                      borderRadius: BorderRadius.circular(10),
                                    )),
                                keyboardType: TextInputType.number,
                                inputFormatters: [
                                  FilteringTextInputFormatter.digitsOnly,
                                  LengthLimitingTextInputFormatter(2),
                                ],
                                textInputAction: TextInputAction.next,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter the expiry year';
                                  } else if (int.tryParse(value) == null) {
                                    return 'Invalid year';
                                  }
                                  return null;
                                },
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        TextFormField(
                          controller: cardHolderController,
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: AppColors.TextFormFieldBorder),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              floatingLabelStyle: TextStyle(
                                  color: AppColors.TextFormFieldBorder),
                              focusColor: AppColors.TextFormFieldBorder,
                              labelText: 'Card Holder',
                              hintText: 'John Doe',
                              hintStyle: TextStyle(
                                  fontSize: 14.66, color: AppColors.labelColor),
                              labelStyle: TextStyle(
                                  fontSize: 14.66, color: AppColors.labelColor),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: AppColors.errorText),
                                  borderRadius: BorderRadius.circular(10)),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: AppColors.TextFormFieldBorder),
                                borderRadius: BorderRadius.circular(10),
                              )),
                          keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.done,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter the card holder name';
                            } else if (value.length < 3) {
                              return 'Name must be at least 3 characters';
                            }
                            return null;
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Ink(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      AppColors.gradientStart,
                      AppColors.gradientEnd,
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState?.validate() ?? false) {
                      showDialog(
  context: context,
  builder: (context) {
    return AlertDialog(
      backgroundColor: Colors.transparent,
      contentPadding: EdgeInsets.zero,
      elevation: 0,
      content: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColors.cardGradientStart,
              AppColors.cardGradientEnd,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Text(cardNumberController.text, style: const TextStyle(letterSpacing: 2, fontWeight: FontWeight.bold, color: Colors.white)),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Text(mmDateController.text, style: const TextStyle(letterSpacing: 2, fontWeight: FontWeight.bold, color: Colors.white, fontSize: 8)),
                ],
              ),
              Row(
                children: [
                  Text(yyDateController.text, style: const TextStyle(letterSpacing: 2, fontWeight: FontWeight.bold, color: Colors.white, fontSize: 8)),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Text(cardHolderController.text, style: const TextStyle(letterSpacing: 2, fontWeight: FontWeight.bold, color: Colors.white)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  },
);

                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    foregroundColor: Colors.white,
                    side: const BorderSide(color: Colors.white, width: 2),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 80,
                      vertical: 20,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    elevation: 0,
                  ),
                  child: const Text('Show card data'),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
