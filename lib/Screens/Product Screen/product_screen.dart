import 'package:flutter/material.dart';
import 'package:pos_application/Modul/products_list.dart';
import 'package:pos_application/My%20Widgets/Itemslist.dart';
import 'package:pos_application/My%20Widgets/custome_button.dart';
import 'package:pos_application/My%20Widgets/my_button.dart';
import 'package:pos_application/Screens/Product%20Screen/new_products_screen.dart';

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
              onPressed: () {
                Navigator.pushNamed(context, NewProductScreen.routeName);
              },
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
                        showModalBottomSheet<void>(
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              height: size.height * 0.5,
                              //color: Colors.red,
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset(
                                          products[index].imageURL,
                                          scale: 8,
                                        ),
                                        SizedBox(width: size.width * 0.02),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              products[index].productName,
                                              style: TextStyle(
                                                fontSize: 27,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            SizedBox(
                                                height: size.height * 0.02),
                                            Text(
                                              products[index].catagory,
                                              style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 18,
                                              ),
                                            ),
                                            SizedBox(
                                                height: size.height * 0.02),
                                            rowProductDetails(
                                                size,
                                                index,
                                                "Code",
                                                products[index].code,
                                                false),
                                            SizedBox(
                                                height: size.height * 0.02),
                                            rowProductDetails(
                                                size,
                                                index,
                                                "Stock",
                                                products[index].inStock,
                                                true),
                                            SizedBox(
                                                height: size.height * 0.02),
                                            rowProductDetails(
                                                size,
                                                index,
                                                "Price",
                                                products[index].productPrice,
                                                false),
                                          ],
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: size.height * 0.03),
                                    CustomeButton(
                                      size: size,
                                      backgroundColor:
                                          Color.fromARGB(255, 116, 167, 255),
                                      press: () {},
                                      text: "Edit Product",
                                      textColor: Colors.white,
                                      height: size.height * 0.07,
                                      width: size.width * 0.7,
                                    ),
                                    SizedBox(height: size.height * 0.03),
                                    CustomeButton(
                                      size: size,
                                      backgroundColor: Colors.blue,
                                      press: () {},
                                      text: "Make Sale",
                                      textColor: Colors.white,
                                      height: size.height * 0.07,
                                      width: size.width * 0.7,
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
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

  Container rowProductDetails(
    Size size,
    int index,
    String title,
    String text,
    bool stockSign,
  ) {
    return Container(
      width: size.width * 0.6,
      //color: Colors.red,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "$title:",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 15,
            ),
          ),
          // SizedBox(
          //     width:
          //         size.width * 0.3),
          stockSign == true
              ? Text(
                  "$text",
                  style: TextStyle(
                    color: Colors.orange,
                    fontSize: 15,
                  ),
                )
              : Text(
                  "$text",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
        ],
      ),
    );
  }
}
