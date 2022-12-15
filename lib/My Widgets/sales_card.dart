import 'package:flutter/material.dart';

class NewSaleProductCard extends StatelessWidget {
  NewSaleProductCard({
    Key? key,
    required this.size,
    required this.productIMG,
    required this.productName,
    required this.productPrice,
    required this.stock,
    required this.onPressed,
  }) : super(key: key);

  final Size size;
  int stock;
  String productName, productPrice, productIMG;
  VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: Colors.grey,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: size.height * 0.1,
            child: Image.asset(
              productIMG,
              scale: 12,
            ),
          ),
          SizedBox(width: size.width * 0.02),
          Container(
            width: size.width * 0.25,
            child: Column(
              children: [
                Text(
                  productName,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: size.height * 0.01),
                Text(
                  "Price: ${productPrice}\$",
                  style: TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(255, 78, 76, 76),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: size.width * 0.2,
            child: Column(
              children: [
                Text(
                  "$stock",
                  style: TextStyle(
                    color: Colors.orange,
                  ),
                ),
                Text(
                  "In Stock",
                  style: TextStyle(
                    color: Colors.orange,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: size.width * 0.05),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(200),
              color: Colors.blue,
            ),
            child: IconButton(
              onPressed: onPressed,
              icon: Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
