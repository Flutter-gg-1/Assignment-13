import 'package:app2/landing_page/subviews/check_box_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants/validations.dart';
import '../reusable_components/custom_txt_field.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignUpView> {
  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController phoneController = TextEditingController();
    TextEditingController pwdController = TextEditingController();

    return Padding(
      padding: const EdgeInsets.all(32),
      child: Column(
        children: [
          CustomTextField(
            txtController: nameController,
            hint: 'Full name',
            icon: CupertinoIcons.person,
            isObscure: false,
            validation: Validations.fullName,
          ),
          CustomTextField(
            txtController: emailController,
            hint: 'Valid email',
            icon: CupertinoIcons.envelope,
            isObscure: false,
            validation: Validations.email,
          ),
          CustomTextField(
            txtController: phoneController,
            hint: 'Phone number',
            icon: CupertinoIcons.device_phone_portrait,
            isObscure: false,
            validation: Validations.phoneNum,
          ),
          CustomTextField(
            txtController: pwdController,
            hint: 'Strong Password',
            icon: CupertinoIcons.lock,
            isObscure: true,
            validation: Validations.pwd,
          ),
          const CheckBoxView(isSignIn: false),
        ],
      ),
    );
  }
}
