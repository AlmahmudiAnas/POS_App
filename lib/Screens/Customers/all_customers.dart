import 'package:flutter/material.dart';
import 'package:pos_application/Modul/customer_list.dart';
import 'package:pos_application/My%20Widgets/customer_card.dart';

class CustomersScreen extends StatelessWidget {
  CustomersScreen({super.key});
  static String routeName = "All customers screen";
  TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Customers"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
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
              ...List.generate(
                customerDemo.length,
                (index) => CustomerCard(
                  size: size,
                  customerImage: customerDemo[index].imageURL,
                  customerName: customerDemo[index].cName,
                  customerDebt: customerDemo[index].cDebt,
                ),
              ),
              //CustomerCard(size: size),
            ],
          ),
        ),
      ),
    );
  }
}
