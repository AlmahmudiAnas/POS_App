import 'package:flutter/material.dart';

class NewProductScreen extends StatelessWidget {
  NewProductScreen({super.key});
  static String routeName = "New Product Screen";
  TextEditingController _productName = TextEditingController();
  TextEditingController _productCode = TextEditingController();
  TextEditingController _productCate = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("New Product"),
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
            ],
          ),
        ),
      ),
    );
  }
}
