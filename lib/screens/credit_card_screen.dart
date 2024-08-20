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
  TextEditingController expiryDateController = TextEditingController();
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
                                controller: expiryDateController,
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
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState?.validate() ?? false) {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text('Card Details'),
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text('Card Number: ${cardNumberController.text}'),
                              Text('Expiry Date: ${expiryDateController.text}'),
                              Text('Card Holder: ${cardHolderController.text}'),
                            ],
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text('Close'),
                            ),
                          ],
                        );
                      },
                    );
                  }
                },
                child: const Text('Show Card Details'),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}

class ExpiryDateFormatter {
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    var text = newValue.text;

    if (newValue.selection.baseOffset == 0) {
      return newValue;
    }

    var buffer = StringBuffer();
    for (int i = 0; i < text.length; i++) {
      buffer.write(text[i]);
      if (i == 1 && text.length < 3) {
        buffer.write('/');
      }
    }

    var string = buffer.toString();
    return newValue.copyWith(
      text: string,
      selection: TextSelection.collapsed(offset: string.length),
    );
  }
}
