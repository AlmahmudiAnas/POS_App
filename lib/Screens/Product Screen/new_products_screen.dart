import 'package:flutter/material.dart';
import 'package:pos_application/My%20Widgets/my_button.dart';

class NewProductScreen extends StatelessWidget {
  NewProductScreen({super.key});
  static String routeName = "NewProduct Screen";
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
        title: Text("New Product"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
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
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: size.height * 0.02),
                TextField(
                  controller: _productCate,
                  decoration: InputDecoration(
                    label: Text('Category'),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: size.height * 0.02),
                Row(
                  children: [
                    Flexible(
                      child: TextField(
                        controller: _productCode,
                        decoration: InputDecoration(
                          label: Text('Product Code'),
                          border: OutlineInputBorder(),
                        ),
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
                    Flexible(
                      child: TextField(
                        controller: _productPrice,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text("Total stock"),
                    Spacer(),
                    Flexible(
                      child: TextField(
                        controller: _productStock,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
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
      ),
    );
  }
}
