import 'package:app2/landing_page/sign_in.dart';
import 'package:app2/landing_page/sign_up.dart';
import 'package:app2/landing_page/subviews/check_box_view.dart';
import 'package:flutter/material.dart';
import '../constants/color_ext.dart';
import '../payment/credit_card_screen.dart';
import '../reusable_components/custom_btn.dart';
import 'subviews/form_toggle_view.dart';
import 'subviews/header_img.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  bool isSignIn = true;

  void shouldNavigate(BuildContext context) {
    // MARK: - TODO: VALIDATION
    // if validation
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => const CreditCardScreen()),
    );
  }

  void _toggleSignIn() {
    setState(() => isSignIn = !isSignIn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: C.bg,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Column(
            children: [
              HeaderImg(
                  title: isSignIn ? 'Welcome back' : 'Get Started',
                  subtitle: isSignIn
                      ? 'sign in to access your account'
                      : 'by creating a free account.'),
              Expanded(
                child: ListView(
                  children: [
                    if (isSignIn) const SignInView() else const SignUpView(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: CustomBtn(
                  title: isSignIn ? 'Sign In' : 'Sign Up',
                  onPressed: () => shouldNavigate(context),
                ),
              ),
              FormToggleView(isSignIn: isSignIn, onToggle: _toggleSignIn),
            ],
          ),
        ),
      ),
    );
  }
}
