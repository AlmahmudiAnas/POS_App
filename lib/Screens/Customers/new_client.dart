import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pos_application/Modul/customer_list.dart';
import 'package:pos_application/My%20Widgets/my_button.dart';

class NewClient extends StatelessWidget {
  NewClient({super.key});
  static String routeName = "New Client";
  TextEditingController _customerName = TextEditingController();
  TextEditingController _customerNumber = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            Icons.close,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            profilePicture(),
            SizedBox(height: size.height * 0.03),
            TextField(
              controller: _customerName,
              decoration: InputDecoration(
                label: Text("Customer name"),
              ),
            ),
            SizedBox(height: size.height * 0.03),
            TextField(
              controller: _customerNumber,
              decoration: InputDecoration(
                label: Text("Phone number"),
              ),
            ),
            SizedBox(height: size.height * 0.03),
            MyButton(
              size: size,
              buttonText: "Save",
              onPressed: () {
                customerDemo.add(
                  Customer(
                    imageURL: "images/blank-profile-photo.jpeg",
                    cName: _customerName.text,
                    cDebt: 0,
                    cPhoneNumber: int.parse(_customerNumber.text),
                  ),
                );
              },
              color: Colors.blue,
              textColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }

  SizedBox profilePicture() {
    return SizedBox(
      height: 115,
      width: 115,
      child: Stack(
        fit: StackFit.expand,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage("images/blank-profile-photo.jpeg"),
          ),
          Positioned(
            bottom: 0,
            right: -12,
            child: SizedBox(
              height: 46,
              width: 46,
              child: MaterialButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                  side: BorderSide(
                    color: Colors.white,
                  ),
                ),
                color: Color(0xFFF5F6F9),
                onPressed: () {},
                child: Icon(Icons.camera_alt),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
