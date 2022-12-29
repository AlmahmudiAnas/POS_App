import 'package:flutter/material.dart';

class SplashContent extends StatelessWidget {
  SplashContent({
    super.key,
    required this.image,
    required this.text,
  });
  final String? text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Spacer(),
        Text(
          "POS APP",
          style: TextStyle(
            fontSize: 20,
            color: Colors.blue,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "$text",
          textAlign: TextAlign.center,
        ),
        Spacer(flex: 2),
        Image.asset(
          "$image",
          height: 350,
          width: 350,
          fit: BoxFit.fill,
        )
      ],
    );
  }
}
