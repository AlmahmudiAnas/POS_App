import 'package:flutter/material.dart';
import 'package:pos_application/Screens/Auth%20Screens/login_screen.dart';
import 'package:pos_application/Screens/Auth%20Screens/sign-up_screen.dart';

import 'Screens/Auth Screens/auth_screen.dart';
import 'Screens/homePage.dart';

final Map<String, WidgetBuilder> routes = {
  HomePage.routeName: (context) => HomePage(),
  AuthScreen.routeName: (context) => AuthScreen(),
  LoginScreen.routeName: (context) => LoginScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
};
