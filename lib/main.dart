import 'package:assignment13/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'screens/credit_card_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.backgroundColorScreen,
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.backgroundColorScreen,
        ),
      ),
      home: CreditCardScreen(),
    );
  }
}
