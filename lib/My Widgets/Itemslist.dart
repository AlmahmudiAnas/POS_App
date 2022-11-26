import 'package:flutter/material.dart';

import 'divider.dart';

class ItemsContainer extends StatelessWidget {
  ItemsContainer({
    Key? key,
    required this.size,
    required this.imageURL,
    required this.itemGroupPrice,
    required this.itemName,
    required this.itemPrice,
  }) : super(key: key);

  final Size size;
  String imageURL,itemName,itemPrice,itemGroupPrice;


  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(width: size.height * 0.01),
        Container(
          width: size.width * 0.15,
          height: size.height * 0.1,
          //color: Colors.blue,
          child: Image.asset(
            imageURL,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(width: size.width * 0.05),
        Container(
          //color: Colors.blue,
          width: size.width * 0.5,
          height: size.height * 0.1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                itemName,
                style: TextStyle(
                  color: Color.fromARGB(255, 27, 121, 199),
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: size.height * 0.01),
              Text(
                itemGroupPrice,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                ),
              ),
              SizedBox(height: size.height * 0.01),
              Text(
                itemPrice,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ),
        MyDivider(size: size),
        SizedBox(width: size.width * 0.05),
        Text(
          "50",
          style: TextStyle(
            color: Colors.orange,
          ),
        ),
      ],
    );
  }
}
