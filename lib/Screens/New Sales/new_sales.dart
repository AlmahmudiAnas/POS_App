import 'package:flutter/material.dart';
import 'package:pos_application/Modul/products_list.dart';
import 'package:pos_application/My%20Widgets/custome_button.dart';
import 'package:pos_application/My%20Widgets/my_button.dart';
import 'package:pos_application/My%20Widgets/sales_card.dart';

class NewSale extends StatefulWidget {
  NewSale({super.key});
  static String routeName = "New Sales";

  @override
  State<NewSale> createState() => _NewSaleState();
}

class _NewSaleState extends State<NewSale> {
  TextEditingController _searchController = TextEditingController();
  late int totalPrice, price;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("New Sale"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  search(size),
                  SizedBox(height: size.height * 0.03),
                  ...List.generate(
                    products.length,
                    (index) {
                      return SingleChildScrollView(
                        child: Column(
                          children: [
                            NewSaleProductCard(
                              size: size,
                              productIMG: products[index].imageURL,
                              productName: products[index].productName,
                              productPrice: products[index].productPrice,
                              stock: products[index].inStock,
                              onPressed: () {
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    int orderQantity = 1;
                                    price =
                                        int.parse(products[index].productPrice);
                                    return popUpDialog(
                                        size, index, orderQantity, context);
                                  },
                                );
                              },
                            ),
                            SizedBox(height: size.height * 0.02),
                          ],
                        ),
                      );
                    },
                  ),

                  //NewSaleProductCard(size: size)
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: CustomeButton(
                text: "Check out",
                backgroundColor: Colors.blue,
                height: size.height * 0.06,
                width: size.width * 0.4,
                textColor: Colors.white,
                size: size,
                press: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }

  Row search(Size size) {
    return Row(
      children: [
        Container(
          //height: size.height * 0.1,
          width: size.width * 0.7,
          child: TextField(
            controller: _searchController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              label: Text("Search"),
              prefixIcon: Icon(Icons.search),
            ),
          ),
        ),
        SizedBox(width: size.width * 0.05),
        Container(
          height: size.height * 0.07,
          width: size.width * 0.15,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color.fromARGB(255, 212, 241, 255),
          ),
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.filter,
              color: Colors.blue,
            ),
          ),
        ),
      ],
    );
  }

  AlertDialog popUpDialog(
      Size size, int index, int orderQantity, BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      contentPadding: EdgeInsets.all(10),
      title: Text(
        "Edit Stock",
        style: TextStyle(
          fontSize: 24,
        ),
      ),
      content: Container(
        height: size.height * 0.35,
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                products[index].productName,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: size.height * 0.02),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(Icons.remove),
                    onPressed: () {
                      setState(() {
                        orderQantity - 1;
                      });
                    },
                    iconSize: 20,
                  ),
                  SizedBox(width: size.width * 0.05),
                  Text(
                    "$orderQantity",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: size.width * 0.05),
                  IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () {
                      setState(() {
                        orderQantity = orderQantity + 1;
                      });
                    },
                    iconSize: 20,
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.02),
              Row(
                children: [
                  Text(orderQantity.toString()),
                  SizedBox(width: size.width * 0.01),
                  Text("X"),
                  SizedBox(width: size.width * 0.01),
                  Text(products[index].productPrice),
                ],
              ),
              SizedBox(height: size.height * 0.02),
              Text("Total = ${price * orderQantity}"),
              SizedBox(height: size.height * 0.02),
              Row(
                children: [
                  CustomeButton(
                    size: size,
                    backgroundColor: Color.fromARGB(255, 133, 178, 255),
                    press: () {
                      Navigator.pop(context);
                    },
                    text: "Cancel",
                    textColor: Color.fromARGB(255, 0, 75, 136),
                    height: size.height * 0.07,
                    width: size.width * 0.3,
                  ),
                  SizedBox(width: size.width * 0.01),
                  CustomeButton(
                    size: size,
                    backgroundColor: Colors.blue,
                    press: () {},
                    text: "Confirm",
                    textColor: Colors.white,
                    height: size.height * 0.07,
                    width: size.width * 0.3,
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
