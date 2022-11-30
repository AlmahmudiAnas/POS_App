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
        child: Center(
          child: Column(
            children: [
              CircleAvatar(
                radius: 50,
                backgroundColor: Colors.grey,
              ),
              SizedBox(height: size.height * 0.02),
              TextField(
                controller: _productName,
                decoration: InputDecoration(
                  label: Text('Product Name'),
                ),
              ),
              SizedBox(height: size.height * 0.02),
              TextField(
                controller: _productCate,
                decoration: InputDecoration(
                  label: Text('Category'),
                ),
              ),
              SizedBox(height: size.height * 0.02),
              Row(
                children: [
                  TextField(
                    controller: _productCode,
                    decoration: InputDecoration(
                      label: Text('Product Code'),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.camera),
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.02),
              Row(
                children: [
                  Text("Price"),
                  Spacer(),
                  TextField(
                    controller: _productPrice,
                  ),
                ],
              ),
              Row(
                children: [
                  Text("Total stock"),
                  Spacer(),
                  TextField(
                    controller: _productStock,
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.02),
              MyButton(
                size: size,
                buttonText: "Save",
                color: Colors.white,
                                              textColor: Colors.blue,
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
