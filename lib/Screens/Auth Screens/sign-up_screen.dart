import 'package:flutter/material.dart';
import 'package:pos_application/Screens/OTP%20Screen/otp_screen.dart';
import 'package:pos_application/Screens/homePage.dart';

import '../../My Widgets/my_button.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});
  static String routeName = "Sign up Screen";

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _phoneNumberController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();
  bool _hidePassword = true;
  String selectedValue = "LYD";
  List<DropdownMenuItem<String>> items = [
    DropdownMenuItem(child: Text("LYD"), value: "LYD"),
    DropdownMenuItem(child: Text("USD"), value: "USD"),
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: size.height * 0.07),
          TextFormField(
            controller: _nameController,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.person_outline),
              hintText: "Enter Your Full Name",
            ),
          ),
          SizedBox(height: size.height * 0.03),
          TextFormField(
            controller: _emailController,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.email_outlined),
              hintText: "Enter Your Email",
            ),
          ),
          SizedBox(height: size.height * 0.03),
          TextFormField(
            controller: _phoneNumberController,
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.phone_outlined),
              hintText: "Enter Your Number",
            ),
          ),
          SizedBox(height: size.height * 0.03),
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
          SizedBox(height: size.height * 0.03),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Selecet Currency",
                style: TextStyle(color: Colors.blue),
              ),
              DropdownButton(
                items: items,
                value: selectedValue,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                ),
                onChanged: (value) {
                  setState(() {
                    selectedValue = value!;
                    print(selectedValue);
                    print(value);
                  });
                },
              ),
            ],
          ),
          SizedBox(height: size.height * 0.07),
          MyButton(
            size: size,
            buttonText: "Sign up",
            color: Colors.white,
            textColor: Colors.blue,
            onPressed: () {
              Navigator.pushNamed(context, OTPScreen.routeName);
            },
          ),
        ],
      ),
    );
  }
}
