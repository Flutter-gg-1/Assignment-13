import 'package:assignment13/Src/show_alert.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController cardNumController = TextEditingController();
  TextEditingController dateMMController = TextEditingController();
  TextEditingController dateYYController = TextEditingController();
  TextEditingController cardHolderController = TextEditingController();

  Map cardInfo = {
    "cardNum": "",
    "expDateMM": "",
    "expDateYY": "",
    "cardHolder": ""
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffCBD0DC),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  width: 315.48,
                  height: 297.78,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Form(
                    key: formKey,
                    child: Column(
                      children: [
                        const SizedBox(height: 30),
                        SizedBox(
                          width: 252.85,
                          child: TextFormField(
                            controller: cardNumController,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            decoration: const InputDecoration(
                                hintText: "Card number",
                                contentPadding:
                                    EdgeInsets.symmetric(horizontal: 15),
                                hintStyle: TextStyle(color: Color(0xffC9CBD0)),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color(0xff2A90F5), width: 1.5))),
                            validator: (value) {
                              if (cardNumController.text.isEmpty) {
                                return "Card number must not be empty";
                              }
                              if (cardNumController.text.length != 16) {
                                return "Card number must be 16 digit";
                              }
                              return null;
                            },
                            onSaved: (value) {
                              cardInfo["cardNum"] = value;
                              cardNumController.clear();
                            },
                          ),
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                                width: 114.33,
                                child: TextFormField(
                                  autovalidateMode:
                                      AutovalidateMode.onUserInteraction,
                                  controller: dateMMController,
                                  decoration: const InputDecoration(
                                      hintText: "Expired date (MM)",
                                      hintStyle: TextStyle(
                                          color: Color(0xffC9CBD0),
                                          fontSize: 10),
                                      contentPadding: EdgeInsets.symmetric(
                                          vertical: 10, horizontal: 8),
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color(0xff2A90F5),
                                              width: 1.5))),
                                  validator: (value) {
                                    if (dateMMController.text.isEmpty) {
                                      return "Date month must not be empty";
                                    }
                                    return null;
                                  },
                                  onSaved: (value) {
                                    cardInfo["expDateMM"] = value;
                                    dateMMController.clear();
                                  },
                                )),
                            const SizedBox(width: 24),
                            SizedBox(
                                width: 114.33,
                                child: TextFormField(
                                  controller: dateYYController,
                                  autovalidateMode:
                                      AutovalidateMode.onUserInteraction,
                                  decoration: const InputDecoration(
                                      contentPadding: EdgeInsets.symmetric(
                                          vertical: 10, horizontal: 8),
                                      hintText: "Expired date (YY)",
                                      hintStyle: TextStyle(
                                          color: Color(0xffC9CBD0),
                                          fontSize: 10),
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color(0xff2A90F5),
                                              width: 1.5))),
                                  validator: (value) {
                                    if (dateYYController.text.isEmpty) {
                                      return "Date year must not be empty";
                                    }
                                    return null;
                                  },
                                  onSaved: (value) {
                                    cardInfo["expDateYY"] = value;
                                    dateYYController.clear();
                                  },
                                ))
                          ],
                        ),
                        const SizedBox(height: 20),
                        SizedBox(
                            width: 252.85,
                            child: TextFormField(
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              controller: cardHolderController,
                              decoration: const InputDecoration(
                                  hintText: "Card Holder",
                                  contentPadding:
                                      EdgeInsets.symmetric(horizontal: 15),
                                  hintStyle:
                                      TextStyle(color: Color(0xffC9CBD0)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Color(0xff2A90F5),
                                          width: 1.5))),
                              validator: (value) {
                                if (cardHolderController.text.isEmpty) {
                                  return "Card number must not be empty";
                                }
                                if (!RegExp(r'^[a-zA-Z\s]+$')
                                    .hasMatch(cardHolderController.text)) {
                                  return "Card holder name must contain only text";
                                }
                                return null;
                              },
                              onSaved: (value) {
                                cardInfo["cardHolder"] = value;
                                cardHolderController.clear();
                              },
                            ))
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 150),
                ElevatedButton(
                  style: ButtonStyle(
                      shape: WidgetStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.62),
                          side: const BorderSide(color: Colors.white))),
                      backgroundColor:
                          WidgetStateProperty.all(const Color(0xff0B80F3)),
                      fixedSize:
                          WidgetStateProperty.all(const Size(269.46, 53.1))),
                  onPressed: () {
                    var formData = formKey.currentState;

                    if (formData!.validate()) {
                      formData.save();
                      showAlert(context, cardInfo);
                    }
                  },
                  child: const Text(
                    'Show card data',
                    style: TextStyle(color: Color(0xffF5F5F5)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
