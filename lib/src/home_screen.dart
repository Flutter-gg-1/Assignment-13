import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String cardNumber = "";
  String expiredDateMM = "";
  String expiredDateYY = "";
  String cardHolder = "";
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: 297,
                  height: 315,
                  child: Card(
                    elevation: 10,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                            width: 252,
                            child: TextFormField(
                              maxLength: 16,
                              keyboardType: TextInputType.number,
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly
                              ],
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter card number';
                                }
                                if (value.length < 16) {
                                  return "The card number must be 16 digits";
                                }
                                return null;
                              },
                              onChanged: (value) => setState(() {
                                cardNumber = value;
                              }),
                              decoration: const InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.blue,
                                    width: 2.0,
                                  ),
                                ),
                                label: Text("Card number"),
                                counterText: '',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(4),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 115,
                                child: TextFormField(
                                  onChanged: (value) => setState(() {
                                    expiredDateMM = value;
                                  }),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter Expired date';
                                    }
                                    return null;
                                  },
                                  keyboardType: TextInputType.number,
                                  inputFormatters: [
                                    FilteringTextInputFormatter.digitsOnly
                                  ],
                                  decoration: const InputDecoration(
                                    counterText: '',
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.blue,
                                        width: 2.0,
                                      ),
                                    ),
                                    label: Text("Expired date (MM)"),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(4),
                                      ),
                                    ),
                                  ),
                                  maxLength: 2,
                                ),
                              ),
                              SizedBox(
                                width: 115,
                                child: TextFormField(
                                  keyboardType: TextInputType.number,
                                  maxLength: 2,
                                  inputFormatters: [
                                    FilteringTextInputFormatter.digitsOnly
                                  ],
                                  decoration: const InputDecoration(
                                    counterText: '',
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.blue,
                                        width: 2.0,
                                      ),
                                    ),
                                    label: Text("Expired date (YY)"),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(4),
                                      ),
                                    ),
                                  ),
                                  onChanged: (value) => setState(() {
                                    expiredDateYY = value;
                                  }),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter expired date';
                                    }
                                    return null;
                                  },
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            width: 252,
                            child: TextFormField(
                              decoration: const InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.blue,
                                    width: 2.0,
                                  ),
                                ),
                                label: Text("Card holder"),
                                hintText: "card holder's name",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(4),
                                  ),
                                ),
                              ),
                              onChanged: (value) => setState(() {
                                cardHolder = value;
                              }),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter card holder name';
                                }
                                return null;
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          contentTextStyle:
                              const TextStyle(color: Colors.white),
                          backgroundColor:
                              const Color.fromARGB(132, 73, 73, 73),
                          content: SizedBox(
                            height: MediaQuery.of(context).size.height / 4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                    margin: const EdgeInsets.only(bottom: 30),
                                    child: Text(cardNumber)),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(cardHolder),
                                    const Text("Valid thru"),
                                    Text("$expiredDateMM/$expiredDateYY")
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }
                  },
                  style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(
                      Color(0xff0c6ccb),
                    ),
                  ),
                  child: const Text(
                      style: TextStyle(color: Colors.white), "Show card data"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
