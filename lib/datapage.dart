import 'package:flutter/material.dart';

class DataPage extends StatefulWidget {
  const DataPage({super.key});

  @override
  State<DataPage> createState() => _DataPageState();
}

class _DataPageState extends State<DataPage> {
  TextEditingController cardNumber = TextEditingController();
  TextEditingController expmonth = TextEditingController();
  TextEditingController expyear = TextEditingController();
  TextEditingController cardName = TextEditingController();

  var cardnum = '';
  var expMonth = '';
  var expYear = '';
  var cardname = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffCBD0DC),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const SizedBox(
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
                    const SizedBox(
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
                                  const EdgeInsets.symmetric(horizontal: 10.0),
                              hintText: "Card number",
                              hintStyle: const TextStyle(
                                  color: Color(0xffC9CBD0),
                                  fontWeight: FontWeight.w300),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(4),
                                  borderSide: const BorderSide(
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
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                            width: 145,
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              controller: expmonth,
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.symmetric(
                                      horizontal: 10.0),
                                  hintText: "Expired date (MM)",
                                  hintStyle: const TextStyle(
                                      color: Color(0xffC9CBD0),
                                      fontWeight: FontWeight.w300,
                                      fontSize: 13),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(4),
                                      borderSide: const BorderSide(
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
                        const SizedBox(
                          width: 24,
                        ),
                        SizedBox(
                            width: 145,
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              controller: expyear,
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.symmetric(
                                      horizontal: 10.0),
                                  hintText: "Expired date (YY)",
                                  hintStyle: const TextStyle(
                                      color: Color(0xffC9CBD0),
                                      fontWeight: FontWeight.w300,
                                      fontSize: 13),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(4),
                                      borderSide: const BorderSide(
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
                    const SizedBox(
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
                                  const EdgeInsets.symmetric(horizontal: 10.0),
                              hintText: "Card Holder",
                              hintStyle: const TextStyle(
                                  color: Color(0xffC9CBD0),
                                  fontWeight: FontWeight.w300),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(4),
                                  borderSide: const BorderSide(
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
              const SizedBox(
                height: 70,
              ),
              InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            backgroundColor:
                                const Color.fromARGB(255, 72, 69, 69),
                            content: Container(
                              height: 183,
                              width: 320,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Image.asset("assets/Vector 2.png"),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 40,
                                  ),
                                  Row(children: [
                                    Text(
                                      cardnum.replaceAllMapped(RegExp(r".{4}"),
                                          (match) => "${match.group(0)} "),
                                      style: const TextStyle(
                                          color: Colors.white, fontSize: 24),
                                    ),
                                  ]),
                                  Row(
                                    children: [
                                      Text(
                                        cardname, // No need to format the card holder's name
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 50,
                                      ),
                                      const Text(
                                        "Valid\nTHRU",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 11),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "$expMonth/$expYear",
                                        style: const TextStyle(
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
                          color: const Color(0xff0B80F3),
                          borderRadius: BorderRadius.circular(15.62),
                          border: Border.all(width: 2, color: Colors.white)),
                      child: const Center(
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
