import 'package:flutter/material.dart';

import 'Screens/Login-Screen/auth_screen.dart';
import 'Screens/homePage.dart';


final Map<String, WidgetBuilder> routes = {
  HomePage.routeName: (context) => HomePage(),
  AuthScreen.routeName: (context) => AuthScreen(),
};
