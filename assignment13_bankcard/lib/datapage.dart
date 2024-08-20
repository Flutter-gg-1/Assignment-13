import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DataPage extends StatefulWidget {
  const DataPage({super.key});

  @override
  State<DataPage> createState() => _DataPageState();
}

class _DataPageState extends State<DataPage> {
  TextEditingController cardNumber = TextEditingController();
  TextEditingController ExpMonth = TextEditingController();
  TextEditingController ExpYear = TextEditingController();
  TextEditingController cardName = TextEditingController();

  var cardnum = '';
  var expMonth = '';
  var expYear = '';
  var cardname = '';
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffCBD0DC),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              SizedBox(
                height: 200,
              ),
              Container(
                height: 310,
                width: 380,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(9)),
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                        width: 315,
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          controller: cardNumber,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          decoration: InputDecoration(
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 10.0),
                              hintText: "Card number",
                              hintStyle: TextStyle(
                                  color: Color(0xffC9CBD0),
                                  fontWeight: FontWeight.w300),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(4),
                                  borderSide: BorderSide(
                                      color: Color(0xff2A90F5), width: 1.47))
                              // ,  errorStyle: TextStyle(
                              //     color: Colors.red
                              //  )
                              ),
                          validator: (value) {
                            cardnum = value ?? "";
                            if (value!.contains(RegExp(r'^[0-9]{16}$'))) {
                              return "valid";
                            } else {
                              // print("Not valid");
                              return "Please enter only numbers and 16 digit";
                            }
                          },
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                            width: 145,
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              controller: ExpMonth,
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              decoration: InputDecoration(
                                  contentPadding:
                                      EdgeInsets.symmetric(horizontal: 10.0),
                                  hintText: "Expired date (MM)",
                                  hintStyle: TextStyle(
                                      color: Color(0xffC9CBD0),
                                      fontWeight: FontWeight.w300,
                                      fontSize: 13),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(4),
                                      borderSide: BorderSide(
                                          color: Color(0xff2A90F5),
                                          width: 1.47))),
                              validator: (value) {
                                expMonth = value ?? "";
                                if (value!.contains(RegExp(r'^[0-9]'))) {
                                  return "valid";
                                } else {
                                  // print("Not valid");
                                  return "Enter numbers";
                                }
                              },
                            )),
                        SizedBox(
                          width: 24,
                        ),
                        SizedBox(
                            width: 145,
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              controller: ExpYear,
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              decoration: InputDecoration(
                                  contentPadding:
                                      EdgeInsets.symmetric(horizontal: 10.0),
                                  hintText: "Expired date (YY)",
                                  hintStyle: TextStyle(
                                      color: Color(0xffC9CBD0),
                                      fontWeight: FontWeight.w300,
                                      fontSize: 13),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(4),
                                      borderSide: BorderSide(
                                          color: Color(0xff2A90F5),
                                          width: 1.47))),
                              validator: (value) {
                                expYear = value ?? "";
                                if (value!.contains(RegExp(r'^[0-9]'))) {
                                  return "valid";
                                } else {
                                  // print("Not valid");
                                  return "Enter numbers";
                                }
                              },
                            ))
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                        width: 315,
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          controller: cardName,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          decoration: InputDecoration(
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 10.0),
                              hintText: "Card Holder",
                              hintStyle: TextStyle(
                                  color: Color(0xffC9CBD0),
                                  fontWeight: FontWeight.w300),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(4),
                                  borderSide: BorderSide(
                                      color: Color(0xff2A90F5), width: 1.47))),
                          validator: (value) {
                            cardname = value ?? "";
                            if (value!.contains(RegExp(r'^[a-zA-Z]'))) {
                              return "valid";
                            } else {
                              // print("Not valid");
                              return "Please enter only letters";
                            }
                          },
                        ))
                  ],
                ),
              ),
              SizedBox(
                height: 70,
              ),
              InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            backgroundColor: Color.fromARGB(255, 72, 69, 69),
                            // backgroundColor: Color(0xff6E6565),
                            content: Container(
                              height: 183,
                              width: 320,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                // border: Border.all(
                                //     width: 2, color: Color(0xff2A90F5))
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Image.asset("assets/Vector 2.png"),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 40,
                                  ),
                                  Row(children: [
                                    Text(
                                      "$cardnum",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 24),
                                    ),
                                  ]),
                                  Row(
                                    children: [
                                      Text(
                                        " $cardname",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 16),
                                      ),
                                      SizedBox(
                                        width: 50,
                                      ),
                                      Text(
                                        "Valid\nTHRU",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 11),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "$expMonth/$expYear",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 14),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          );
                        });
                  },
                  child: Container(
                      height: 53,
                      width: 270,
                      decoration: BoxDecoration(
                          color: Color(0xff0B80F3),
                          borderRadius: BorderRadius.circular(15.62),
                          border: Border.all(width: 2, color: Colors.white)),
                      child: Center(
                        child: Text(
                          "Show card data",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      )))
            ],
          ),
        ),
      ),
    );
  }
}
