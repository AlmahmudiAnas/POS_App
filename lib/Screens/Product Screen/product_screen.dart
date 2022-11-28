import 'package:flutter/material.dart';
import 'package:pos_application/Modul/products_list.dart';
import 'package:pos_application/My%20Widgets/Itemslist.dart';
import 'package:pos_application/My%20Widgets/my_button.dart';

class ProductScreen extends StatefulWidget {
  ProductScreen({super.key});
  static String routeName = "Product Screen";

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  TextEditingController _searchController = TextEditingController();
  var scaffoldKey = GlobalKey<ScaffoldState>();
  bool isBottomSheetShown = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        key: scaffoldKey,
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
                ...List.generate(
                  products.length,
                  (index) {
                    return ItemsContainer(
                      size: size,
                      products: products[index],
                      press: () {
                        if (isBottomSheetShown) {
                          Navigator.pop(context);
                          isBottomSheetShown = false;
                        } else {
                          scaffoldKey.currentState!.showBottomSheet(
                            (context) => Container(
                              width: double.infinity,
                              height: size.height * 0.5,
                              color: Colors.red,
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    Padding(padding: EdgeInsets.all(20)),
                                    Row(
                                      children: [
                                        Image.asset(products[index].imageURL),
                                        SizedBox(width: size.width * 0.1),
                                        Column(
                                          children: [
                                            Text(
                                              products[index].productName,
                                              style: TextStyle(
                                                fontSize: 22,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            SizedBox(
                                                height: size.height * 0.01),
                                            Text(
                                              products[index].catagory,
                                              style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.grey,
                                              ),
                                            ),
                                            SizedBox(
                                                height: size.height * 0.02),
                                            Row(
                                              children: [
                                                Text(
                                                  "Code:",
                                                  style: TextStyle(
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                                Spacer(),
                                                Text(
                                                  products[index].code,
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                                height: size.height * 0.02),
                                            Row(
                                              children: [
                                                Text(
                                                  "In stock:",
                                                  style: TextStyle(
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                                Spacer(),
                                                Text(
                                                  products[index].inStock,
                                                  style: TextStyle(
                                                    color: Colors.orange,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                                height: size.height * 0.02),
                                            Row(
                                              children: [
                                                Text(
                                                  "Price:",
                                                  style: TextStyle(
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                                Spacer(),
                                                Text(
                                                  products[index].productPrice,
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                                height: size.height * 0.02),
                                            MyButton(
                                              size: size,
                                              buttonText: "Edit product",
                                              onPressed: () {},
                                            ),
                                            SizedBox(
                                                height: size.height * 0.02),
                                            MyButton(
                                              size: size,
                                              buttonText: "Make Sale",
                                              onPressed: () {},
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        }
                      },
                    );
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
