import 'package:flutter/material.dart';
import 'package:pos_application/Screens/All%20Sales/all_sales.dart';
import 'package:pos_application/Screens/Auth%20Screens/login_screen.dart';
import 'package:pos_application/Screens/Auth%20Screens/sign-up_screen.dart';
import 'package:pos_application/Screens/Customers/all_customers.dart';
import 'package:pos_application/Screens/Customers/new_client.dart';
import 'package:pos_application/Screens/OTP%20Screen/otp_screen.dart';
import 'package:pos_application/Screens/Product%20Screen/edit_product.dart';
import 'package:pos_application/Screens/Product%20Screen/new_products_screen.dart';
import 'package:pos_application/Screens/Product%20Screen/product_screen.dart';

import 'Screens/Auth Screens/auth_screen.dart';
import 'Screens/homePage.dart';

final Map<String, WidgetBuilder> routes = {
  HomePage.routeName: (context) => HomePage(),
  AuthScreen.routeName: (context) => AuthScreen(),
  LoginScreen.routeName: (context) => LoginScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  OTPScreen.routeName: (context) => OTPScreen(),
  ProductScreen.routeName: (context) => ProductScreen(),
  NewProductScreen.routeName: (context) => NewProductScreen(),
  EditProduct.routeName: (context) => EditProduct(),
  CustomersScreen.routeName: (context) => CustomersScreen(),
  NewClient.routeName: (context) => NewClient(),
  AllSales.routeName:(context) => AllSales(),
};
