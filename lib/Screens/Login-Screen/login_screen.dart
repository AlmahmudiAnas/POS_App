import 'package:flutter/material.dart';

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
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: size.height * 0.1),
          MyButton(
            size: size,
            buttonText: "Login",
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  const MyButton({
    Key? key,
    required this.size,
    required this.buttonText,
    required this.onPressed,
  }) : super(key: key);

  final Size size;
  final String buttonText;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: size.height * 0.07,
        width: size.width * 0.5,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.blue,
            width: 1.5,
          ),
          borderRadius: BorderRadius.circular(25),
        ),
        child: MaterialButton(
          child: Center(
            child: Text(
              buttonText,
              style: TextStyle(
                fontSize: 25,
                //fontWeight: FontWeight.bold,
              ),
            ),
          ),
          onPressed: onPressed,
        ),
      ),
    );
  }
}
