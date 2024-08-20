import 'package:flutter/material.dart';
import 'show_credit_card_details.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    TextEditingController cardNumberCotroller = TextEditingController();
    TextEditingController cardHolderCotroller = TextEditingController();
    TextEditingController expiredDateMCotroller = TextEditingController();
    TextEditingController expiredDateYCotroller = TextEditingController();
    return Scaffold(
      backgroundColor: const Color(0xffcbd0dc),
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 350,
              width: 315.48,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
              ),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 31, right: 31),
                      child: TextFormField(
                        controller: cardNumberCotroller,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please enter card number";
                          }
                          if (value.length != 16) {
                            return "The card number consist of 16 digits";
                          }
                          return null;
                        },
                        
                        decoration: InputDecoration(
                            hintText: "Card number",
                            hintStyle: const TextStyle(
                                color: Color(0xffC9CBD0), fontSize: 14),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(3.28)),
                              enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Color(0xff2A90F5))
                              )),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 31, vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: TextFormField(
                              controller: expiredDateMCotroller,
                              autovalidateMode: AutovalidateMode.onUserInteraction,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Enter month";
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                  hintText: "Expired date (MM)",
                                  hintStyle: const TextStyle(
                                      color: Color(0xffC9CBD0), fontSize: 9),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(3.6)),
                                      enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Color(0xff2A90F5))
                              )
                                      ),
                            ),
                          ),
                          const SizedBox(
                            width: 25,
                          ),
                          Expanded(
                            child: TextFormField(
                              controller: expiredDateYCotroller,
                              autovalidateMode: AutovalidateMode.onUserInteraction,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Enter year";
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                  hintText: "Expired date (YY)",
                                  hintStyle: const TextStyle(
                                      color: Color(0xffC9CBD0), fontSize: 9),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(3.6)),
                                      enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Color(0xff2A90F5))
                              )),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 31, right: 31, top: 40),
                      child: TextFormField(
                        controller: cardHolderCotroller,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        keyboardType: TextInputType.text,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please enter card holder name";
                          }
                          if (RegExp(r'[0-9]').hasMatch(value)) {
                            return "The card holder name consist of letters only!";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            hintText: "Card Holder",
                            hintStyle: const TextStyle(
                                color: Color(0xffC9CBD0), fontSize: 14),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(3.28)),
                                enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Color(0xff2A90F5))
                              )),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(top: 137),
              child: Container(
                height: 53.11,
                width: 269.46,
                decoration: BoxDecoration(
                    gradient: const LinearGradient(
                        colors: [Color(0xff0B80F3), Color(0xff0C67C0)],
                        begin: Alignment(0, 0)),
                    borderRadius: BorderRadius.circular(15.62),
                    border: Border.all(color: Colors.white, width: 1)),
                child: ElevatedButton(
                  onPressed: () {
                    if(_formKey.currentState?.validate() ?? false){
                      showCreditCardDetails(
                        context,
                        cardNumberCotroller.text,
                        cardHolderCotroller.text,
                        expiredDateMCotroller.text,
                        expiredDateYCotroller.text
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.62),
                    ),
                    backgroundColor: Colors.transparent,
                    foregroundColor: Colors.transparent,
                  ),
                  child: const Text(
                    "Show card data",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ))
        ],
      )),
    );
  }
}
