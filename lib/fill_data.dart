import 'package:flutter/material.dart';

class FillData extends StatefulWidget {
  const FillData({super.key});

  @override
  State<FillData> createState() => _FillDataState();
}

class _FillDataState extends State<FillData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Hello World!'),
      ),
    );
  }
}
