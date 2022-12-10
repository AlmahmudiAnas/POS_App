import 'package:flutter/material.dart';

import 'my_separator.dart';

class InvoiceCard extends StatelessWidget {
  InvoiceCard({
    Key? key,
    required this.size,
    required this.time,
    required this.seller,
    required this.product,
    required this.pcs,
    required this.totalPrice,
    required this.productPrice,
  }) : super(key: key);

  final Size size;
  final String time, seller, product;
  final int pcs, totalPrice, productPrice;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: size.height * 0.37,
          color: Color.fromARGB(255, 218, 218, 218),
        ),
        Positioned(
          top: 18,
          left: 10,
          child: Container(
            width: size.width * 0.95,
            height: size.height * 0.33,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            "MEMO:",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            time,
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      //SizedBox(width: size.width * 0.45),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.menu),
                      ),
                    ],
                  ),
                  SizedBox(height: size.height * 0.01),
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage:
                            AssetImage("images/blank-profile-photo.jpeg"),
                        radius: 20,
                      ),
                      SizedBox(width: size.width * 0.05),
                      Text(
                        seller,
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ],
                  ),
                  SizedBox(height: size.height * 0.01),
                  MySeparator(),
                  SizedBox(height: size.height * 0.01),
                  Text(
                    product,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 19,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "PCS: $pcs",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        "$productPrice LYD",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: size.height * 0.02),
                  MySeparator(),
                  Container(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "Total: $totalPrice LYD",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Text(
                          "Paid: $totalPrice LYD",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w900,
                            color: Colors.green,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
