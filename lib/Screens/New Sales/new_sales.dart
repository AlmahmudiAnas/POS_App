import 'package:flutter/material.dart';
import 'package:pos_application/Modul/products_list.dart';
import 'package:pos_application/My%20Widgets/sales_card.dart';

class NewSale extends StatelessWidget {
  NewSale({super.key});
  static String routeName = "New Sales";
  TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("New Sale"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(
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
              ),
              SizedBox(height: size.height * 0.03),
              ...List.generate(
                products.length,
                (index) => SingleChildScrollView(
                  child: Column(
                    children: [
                      NewSaleProductCard(
                        size: size,
                        productIMG: products[index].imageURL,
                        productName: products[index].productName,
                        productPrice: products[index].productPrice,
                        stock: products[index].inStock,
                        onPressed: () {},
                      ),
                      SizedBox(height: size.height * 0.02),
                    ],
                  ),
                ),
              ),
              //NewSaleProductCard(size: size)
            ],
          ),
        ),
      ),
    );
  }
}
