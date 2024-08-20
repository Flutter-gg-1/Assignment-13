import 'package:flutter/material.dart';
import '../../constants/color_ext.dart';

class FormToggleView extends StatelessWidget {
  const FormToggleView({
    super.key,
    required this.isSignIn,
    required this.onToggle,
  });
  final bool isSignIn;
  final VoidCallback onToggle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Column(
        children: [
          if (isSignIn)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('New Member?'),
                TextButton(
                    onPressed: onToggle,
                    child: const Text(
                      'Register Now',
                      style: TextStyle(color: C.accent),
                    ))
              ],
            )
          else
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Already a member?'),
                TextButton(
                    onPressed: onToggle,
                    child: const Text(
                      'Log In',
                      style: TextStyle(color: C.accent),
                    ))
              ],
            ),
        ],
      ),
    );
  }
}
