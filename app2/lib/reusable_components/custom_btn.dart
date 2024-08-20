import 'package:flutter/material.dart';

import '../constants/color_ext.dart';

class CustomBtn extends StatelessWidget {
  const CustomBtn({super.key, required this.title, required this.onPressed});

  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            backgroundColor: C.accent,
            textStyle: const TextStyle(color: Colors.white),
          ),
          onPressed: onPressed,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const Icon(
                Icons.chevron_right,
                color: Colors.white,
                size: 32,
              ),
            ],
          ),
        ))
      ],
    );
  }
}
