import 'package:flutter/material.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});
  static String routeName = "OTP Screen";

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: size.height * 0.1),
              Text(
                "Verification",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w900,
                ),
              ),
              SizedBox(height: size.height * 0.05),
              Image.asset("images/png-trans-image-sms.png"),
            ],
          ),
        ),
      ),
    );
  }
}
