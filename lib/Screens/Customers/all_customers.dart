import 'package:flutter/material.dart';
import 'package:pos_application/Modul/customer_list.dart';
import 'package:pos_application/My%20Widgets/customer_card.dart';

class CustomersScreen extends StatelessWidget {
  CustomersScreen({super.key});
  static String routeName = "All customers screen";
  TextEditingController _searchController = TextEditingController();
  var scaffoldKey = GlobalKey<ScaffoldState>();
  bool isBottomSheetShown = false;

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
                (index) => MaterialButton(
                  onPressed: () {
                    scaffoldKey.currentState!.showBottomSheet(
                      (context) => Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            CircleAvatar(
                              backgroundImage:
                                  AssetImage(customerDemo[index].imageURL),
                              radius: 3,
                            ),
                            SizedBox(width: size.width * 0.02),
                            Text(
                              customerDemo[index].cName,
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 20,
                              ),
                            ),
                            SizedBox(height: size.height * 0.02),
                            Text(
                              customerDemo[index].cPhoneNumber.toString(),
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(height: size.height * 0.02),
                            Text(
                              "Debt ${customerDemo[index].cDebt.toString()}\$",
                              style: TextStyle(
                                color: Colors.redAccent,
                                fontSize: 15,
                              ),
                            ),
                            Row(
                              children: [
                                //add row of buttons
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  },
                  child: CustomerCard(
                    size: size,
                    customerImage: customerDemo[index].imageURL,
                    customerName: customerDemo[index].cName,
                    customerDebt: customerDemo[index].cDebt,
                  ),
                ),
              ),
              //CustomerCard(size: size),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
