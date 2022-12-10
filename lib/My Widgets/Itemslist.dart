import 'package:flutter/material.dart';
import 'package:pos_application/Modul/products_list.dart';

import 'divider.dart';

class ItemsContainer extends StatelessWidget {
  ItemsContainer({
    Key? key,
    required this.size,
    required this.products,
    required this.press,
  }) : super(key: key);

  final Size size;
  VoidCallback press;
  Products products;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        children: [
          SizedBox(height: size.height * 0.01),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(width: size.height * 0.01),
              Container(
                width: size.width * 0.15,
                height: size.height * 0.1,
                //color: Colors.blue,
                child: Image.asset(
                  products.imageURL,
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
                      products.productName,
                      style: TextStyle(
                        color: Color.fromARGB(255, 27, 121, 199),
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(height: size.height * 0.01),
                    Text(
                      products.productGroupPrice,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(height: size.height * 0.01),
                    Text(
                      "${products.productPrice} \$",
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
                products.inStock,
                style: TextStyle(
                  color: Colors.orange,
                ),
              ),
            ],
          ),
          SizedBox(height: size.height * 0.01),
          Divider(
            height: 2,
            thickness: 2,
          ),
        ],
      ),
    );
  }
}
