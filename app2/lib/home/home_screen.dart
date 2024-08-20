import 'package:flutter/material.dart';

import '../constants/color_ext.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Welcome To Home',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              AspectRatio(
                aspectRatio: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('assets/welcome.png'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
