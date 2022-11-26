import 'package:flutter/material.dart';
import 'package:pos_application/My%20Widgets/Itemslist.dart';
import 'package:pos_application/My%20Widgets/divider.dart';

class ProductScreen extends StatelessWidget {
  ProductScreen({super.key});
  static String routeName = "Product Screen";
  TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Products"),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.add),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
            child: Column(
              children: [
                TextField(
                  controller: _searchController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text("Search"),
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
                SizedBox(height: size.height * 0.02),
                Row(
                  children: [
                    SizedBox(width: size.width * 0.02),
                    Text(
                      "Product name",
                      style: TextStyle(
                        color: Color.fromARGB(255, 108, 108, 108),
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(width: size.width * 0.51),
                    Text(
                      "In stock",
                      style: TextStyle(
                        color: Colors.orange,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: size.height * 0.012),
                Divider(
                  height: 2,
                  thickness: 2,
                ),
                SizedBox(height: size.height * 0.012),
                ItemsContainer(
                  size: size,
                  imageURL: "images/KH6----spark__9t__hei_--800x800.png",
                  itemName: "Item 1",
                  itemGroupPrice: "25.000",
                  itemPrice: "15.00 \$",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
