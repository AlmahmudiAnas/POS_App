import 'package:flutter/material.dart';

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
          color: Colors.white,
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
