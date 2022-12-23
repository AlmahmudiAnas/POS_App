import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});
  static String routeName = "Settings Screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      body: SingleChildScrollView(),
    );
  }
}
