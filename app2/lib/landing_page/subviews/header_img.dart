import 'package:flutter/material.dart';

class HeaderImg extends StatelessWidget {
  const HeaderImg({super.key, required this.title, required this.subtitle});

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1.8,
          child: Stack(
            fit: StackFit.expand,
            children: [
              Image.asset(
                'assets/bgImg.png', // Replace with your image URL
                fit: BoxFit.contain,
              ),
              Container(
                alignment: Alignment.bottomCenter, // Center the text
                child: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        subtitle,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
