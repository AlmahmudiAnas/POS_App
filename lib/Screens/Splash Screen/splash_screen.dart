import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:pos_application/My%20Widgets/my_button.dart';
import 'package:pos_application/Screens/Auth%20Screens/auth_screen.dart';

import 'splash_content.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({super.key});
  static String routeName = "Splash Screen";

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text": "Welcome to the Store, Let's shop!",
      "image": "images/istockphoto.jpg",
    },
    {
      "text": "We help people connect with store \naround Libya",
      "image": "images/37ee7ce9979a45034b40c3df22d5e1b2(1).png",
    },
    {
      "text": "We show the easy way to shop. \nJust stay home and shop with us",
      "image": "images/in-cloud3.png",
    }
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 202, 202, 202),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Spacer(flex: 1),
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
                  image: splashData[index]["image"],
                  text: splashData[index]["text"],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Column(
                  children: [
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                        (index) => BuildDot(index: index),
                      ),
                    ),
                    Spacer(flex: 3),
                    MyButton(
                        size: size,
                        buttonText: "Continue",
                        onPressed: () {
                          Navigator.pushNamed(context, AuthScreen.routeName);
                        },
                        color: Colors.blue,
                        textColor: Colors.white),
                    Spacer(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  AnimatedContainer BuildDot({required int index}) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? Colors.blue : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
