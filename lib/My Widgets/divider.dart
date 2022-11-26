import 'package:flutter/material.dart';

class MyDivider extends StatelessWidget {
  const MyDivider({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 0.008,
      height: size.height * 0.1,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 210, 210, 210),
        borderRadius: BorderRadius.circular(50),
      ),
    );
  }
}
