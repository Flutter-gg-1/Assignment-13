import 'package:app2/landing_page/subviews/check_box_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants/validations.dart';
import '../reusable_components/custom_txt_field.dart';

class SignInView extends StatefulWidget {
  const SignInView({super.key});

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController pwdController = TextEditingController();

    return Padding(
      padding: const EdgeInsets.all(32),
      child: Column(
        children: [
          CustomTextField(
            txtController: emailController,
            hint: 'Enter your email',
            icon: CupertinoIcons.envelope,
            isObscure: false,
            validation: Validations.email,
          ),
          CustomTextField(
            txtController: pwdController,
            hint: 'Password',
            icon: CupertinoIcons.lock,
            isObscure: true,
            validation: Validations.pwd,
          ),
          const CheckBoxView(isSignIn: true),
        ],
      ),
    );
  }
}
