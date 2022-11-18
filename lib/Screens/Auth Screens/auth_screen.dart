import 'package:flutter/material.dart';
import 'package:pos_application/Screens/Auth%20Screens/sign-up_screen.dart';

import 'login_screen.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);
  static String routeName = "Auth Screen";

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  bool logclick = true;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset("images/in-cloud3.png"),
              SizedBox(height: size.height * 0.01),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Column(
                      children: [
                        GestureDetector(
                          onTap: (() {
                            logclick = true;
                            setState(() {});
                          }),
                          child: Text(
                            "Login",
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        logclick == true
                            ? Container(
                                height: 3,
                                width: 60,
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(200),
                                ),
                              )
                            : Container(),
                      ],
                    ),
                    SizedBox(width: size.width * 0.06),
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            logclick = false;
                            setState(() {});
                          },
                          child: Text(
                            "Sign-up",
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        logclick == false
                            ? Container(
                                height: 3,
                                width: 80,
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(200),
                                ),
                              )
                            : Container(),
                      ],
                    ),
                  ],
                ),
              ),
              logclick == true ? LoginScreen() : SignUpScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
