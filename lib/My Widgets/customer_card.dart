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
        color: Colors.grey,
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(customerImage),
            radius: 2,
          ),
          SizedBox(width: size.width * 0.2),
          Column(
            children: [
              Text(
                customerName,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: size.height * 0.03),
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
    );
  }
}
