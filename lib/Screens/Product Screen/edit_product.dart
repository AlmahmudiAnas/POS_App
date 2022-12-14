import 'package:flutter/material.dart';
import 'package:pos_application/Modul/products_list.dart';
import 'package:pos_application/My%20Widgets/my_button.dart';

class EditProduct extends StatelessWidget {
  EditProduct({super.key});
  static String routeName = "edit product";
  TextEditingController _productName = TextEditingController();
  TextEditingController _productCode = TextEditingController();
  TextEditingController _productCate = TextEditingController();
  TextEditingController _productStock = TextEditingController();
  TextEditingController _productPrice = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit Product"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Center(
            child: Column(
              children: [
                SizedBox(height: size.height * 0.04),
                CircleAvatar(
                  radius: 50,
                  backgroundImage:
                      AssetImage('images/blank-profile-photo.jpeg'),
                ),
                SizedBox(height: size.height * 0.05),
                TextField(
                  controller: _productName,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text('Product Name'),
                  ),
                ),
                SizedBox(height: size.height * 0.03),
                TextField(
                  controller: _productCate,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text('Category'),
                  ),
                ),
                SizedBox(height: size.height * 0.03),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: TextField(
                        controller: _productCode,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          label: Text('Product Code'),
                        ),
                      ),
                    ),
                    SizedBox(width: size.width * 0.03),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.camera_alt_outlined),
                    ),
                  ],
                ),
                SizedBox(height: size.height * 0.02),
                Row(
                  children: [
                    Text("Price"),
                    Spacer(),
                    Container(
                      width: size.width * 0.2,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                        controller: _productPrice,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: size.height * 0.02),
                Row(
                  children: [
                    Text("Total stock"),
                    Spacer(),
                    Container(
                      width: size.width * 0.2,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                        controller: _productStock,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
