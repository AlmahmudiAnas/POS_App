import 'package:flutter/material.dart';
import 'package:pos_application/Modul/customer_list.dart';
import 'package:pos_application/My%20Widgets/custome_button.dart';
import 'package:pos_application/My%20Widgets/customer_card.dart';
import 'package:pos_application/My%20Widgets/my_button.dart';
import 'package:pos_application/Screens/Customers/edit_customer.dart';
import 'package:pos_application/Screens/Customers/new_client.dart';

class CustomersScreen extends StatefulWidget {
  CustomersScreen({super.key});
  static String routeName = "All customers screen";

  @override
  State<CustomersScreen> createState() => _CustomersScreenState();
}

class _CustomersScreenState extends State<CustomersScreen> {
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
          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
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
                (index) => Column(
                  children: [
                    MaterialButton(
                      onPressed: () {
                        showModalBottomSheet<void>(
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              height: size.height * 0.4,
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    CircleAvatar(
                                      backgroundImage: AssetImage(
                                          customerDemo[index].imageURL),
                                      radius: 50,
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
                                      customerDemo[index]
                                          .cPhoneNumber
                                          .toString(),
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 15,
                                      ),
                                    ),
                                    SizedBox(height: size.height * 0.02),
                                    Text(
                                      "Debt ${customerDemo[index].cDebt}\$",
                                      style: TextStyle(
                                        color: Colors.redAccent,
                                        fontSize: 15,
                                      ),
                                    ),
                                    SizedBox(height: size.height * 0.02),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        //add row of buttons
                                        CustomeButton(
                                          size: size,
                                          text: "Edit",
                                          press: () {
                                            Navigator.pushNamed(
                                                context, EditCustomer.routeName,
                                                arguments: customerDemo[index]);
                                          },
                                          backgroundColor: Color.fromARGB(
                                              255, 109, 162, 252),
                                          textColor: Colors.white,
                                          height: size.height * 0.07,
                                          width: size.width * 0.4,
                                        ),
                                        SizedBox(width: size.width * 0.02),
                                        CustomeButton(
                                          size: size,
                                          text: "View Order",
                                          textColor: Colors.white,
                                          backgroundColor: Colors.blue,
                                          press: () {},
                                          height: size.height * 0.07,
                                          width: size.width * 0.4,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      },
                      child: CustomerCard(
                        size: size,
                        customerImage: customerDemo[index].imageURL,
                        customerName: customerDemo[index].cName,
                        customerDebt: customerDemo[index].cDebt,
                      ),
                    ),
                    SizedBox(height: size.height * 0.01),
                  ],
                ),
              ),
              //CustomerCard(size: size),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, NewClient.routeName);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
