import 'package:flutter/material.dart';

class CustomeButton extends StatelessWidget {
  CustomeButton({
    Key? key,
    required this.size,
    required this.backgroundColor,
    required this.press,
    required this.text,
    required this.textColor,
    required this.height,
    required this.width,
  }) : super(key: key);

  final Size size;
  final backgroundColor, textColor;
  final String text;
  final VoidCallback press;
  final width, height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        border: Border.all(
          color: backgroundColor,
          width: 1.5,
        ),
        borderRadius: BorderRadius.circular(25),
        color: backgroundColor,
        boxShadow: [
          BoxShadow(
            color: Colors.blue.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 10,
            offset: Offset(0, 2), // changes position of shadow
          ),
        ],
      ),
      child: MaterialButton(
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
              fontSize: 25,
              //fontWeight: FontWeight.bold,
            ),
          ),
        ),
        onPressed: () {},
      ),
    );
  }
}
