import 'package:assignment13/validators.dart';
import 'package:assignment13/widgets/user_input.dart';
import 'package:flutter/material.dart';

class FillData extends StatefulWidget {
  const FillData({super.key});

  @override
  State<FillData> createState() => _FillDataState();
}

class _FillDataState extends State<FillData> {

  TextEditingController cardNumberController = TextEditingController();
  TextEditingController expireMonthController = TextEditingController();
  TextEditingController expireYearController = TextEditingController();
  TextEditingController cardHolderController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffCBD0DC),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 315.48,
                height: 297.78,
                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(8.95)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    UserInput(label: "Card number",fontSize: 14.66, height: 39.58, width: 252.85, controller: cardNumberController,validator: cardNumberValidator, type: TextInputType.number),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        UserInput(label: "Expired date (MM)",fontSize: 10.79, height: 38.83, width: 114.33, controller: expireMonthController, validator: expireMonthValidator, type: TextInputType.number,),
                        UserInput(label: "Expired date (YY)",fontSize: 10.79, height: 38.83, width: 114.33, controller: expireYearController, validator: expireYearValidator, type: TextInputType.number,),
                      ]
                    ),
                    UserInput(label: "Card Holder",fontSize: 14.66, height: 39.58, width: 252.85, controller: cardHolderController, validator: cardHolderValidator, type: TextInputType.name,),
                  ],
                ),
              ),
              const SizedBox(height: 137.22,),
              Container(
                width: 269.46,
                height: 53.11,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.62),
                  gradient: const LinearGradient(colors: [Color(0xff0B80F3), Color(0xff0C67C0)])
                ),
                child: FilledButton(
                  style: const ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.transparent)),
                  onPressed: (){},
                  child: const Text("Show card data",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.5))
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}