import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:pos_application/My%20Widgets/my_button.dart';
import 'package:pos_application/Screens/homePage.dart';

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
              SizedBox(height: size.height * 0.01),
              Image.asset(
                "images/37ee7ce9979a45034b40c3df22d5e1b2(1).png",
                scale: 2,
              ),
              SizedBox(height: size.height * 0.01),
              Text(
                "We sent SMS code to your number",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: size.height * 0.1),
              OtpTextField(
                numberOfFields: 5,
                borderColor: Colors.blue,
                //set to true to show as box or false to show as dash
                showFieldAsBox: true,
                //runs when a code is typed in
                onCodeChanged: (String code) {
                  //handle validation or checks here
                },
                //runs when every textfield is filled
                onSubmit: (String verificationCode) {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("Verification Code"),
                          content: Text('Code entered is $verificationCode'),
                        );
                      });
                }, // end onSubmit
              ),
              SizedBox(height: size.height * 0.1),
              MyButton(
                size: size,
                buttonText: "Continue",
                color: Colors.white,
                textColor: Colors.blue,
                onPressed: () {
                  Navigator.pushNamed(context, HomePage.routeName);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
