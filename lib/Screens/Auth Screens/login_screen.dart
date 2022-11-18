import 'package:flutter/material.dart';
import 'package:pos_application/My%20Widgets/my_button.dart';
import 'package:pos_application/Screens/OTP%20Screen/otp_screen.dart';
import 'package:pos_application/Screens/homePage.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);
  static String routeName = "Login Screen";

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  bool _hidePassword = true;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: size.height * 0.1),
          TextFormField(
            controller: _emailController,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.email_outlined),
              hintText: "Enter Your Email",
            ),
          ),
          SizedBox(height: size.height * 0.05),
          TextFormField(
            keyboardType: TextInputType.text,
            controller: _passwordController,
            obscureText: _hidePassword,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.lock_outlined),
              suffixIcon: IconButton(
                icon: Icon(
                  _hidePassword ? Icons.visibility : Icons.visibility_off,
                ),
                onPressed: () {
                  setState(() {
                    _hidePassword = !_hidePassword;
                  });
                },
              ),
              hintText: "Enter Your Password",
            ),
          ),
          SizedBox(height: size.height * 0.02),
          Text(
            "Forget Password?",
            style: TextStyle(
              color: Colors.blueAccent,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: size.height * 0.1),
          MyButton(
            size: size,
            buttonText: "Login",
            onPressed: () {
              Navigator.pushNamed(context, HomePage.routeName);
            },
          ),
        ],
      ),
    );
  }
}
