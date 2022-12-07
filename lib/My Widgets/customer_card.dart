import 'package:flutter/material.dart';

class CustomerCard extends StatelessWidget {
  CustomerCard({
    Key? key,
    required this.size,
    required this.customerName,
    required this.customerImage,
    required this.customerDebt,
  }) : super(key: key);

  final Size size;
  final String customerName, customerImage;
  final int customerDebt;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: size.height * 0.1,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color.fromARGB(255, 216, 216, 216),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 2,
            offset: Offset(0, 3),
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(customerImage),
              radius: 30,
            ),
            SizedBox(width: size.width * 0.02),
            Column(
              children: [
                Text(
                  customerName,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: size.height * 0.008),
                customerDebt == 0
                    ? Container()
                    : Text(
                        "Debt ${customerDebt}\$",
                        style: TextStyle(
                          color: Colors.redAccent,
                          fontSize: 15,
                        ),
                      ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
