import 'package:flutter/material.dart';
import 'package:pos_application/Modul/customer_list.dart';
import 'package:pos_application/My%20Widgets/invoice_card.dart';

class AllSales extends StatefulWidget {
  AllSales({super.key});
  static String routeName = "All sales";

  @override
  State<AllSales> createState() => _AllSalesState();
}

class _AllSalesState extends State<AllSales> {
  List<DropdownMenuItem<dynamic>>? customernames = [
    DropdownMenuItem(child: Text("Customer1"), value: "Customer1"),
    DropdownMenuItem(child: Text("Customer2"), value: "Customer2"),
    DropdownMenuItem(child: Text("Customer3"), value: "Customer3"),
  ];

  List<DropdownMenuItem<dynamic>>? datesList = [
    DropdownMenuItem(child: Text("Today"), value: "Today"),
    DropdownMenuItem(child: Text("Yesterday"), value: "Yesterday"),
    DropdownMenuItem(child: Text("This week"), value: "This week"),
  ];

  String selectedCustomerValue = "All clients";
  String selectedDateValue = "All Dates";

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("All sales"),
      ),
      backgroundColor: Color.fromARGB(255, 28, 90, 141),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                // DropdownButton(
                //   items: customernames,
                //   value: selectedCustomerValue,
                //   onChanged: (newValue) {
                //     setState(() {
                //       selectedCustomerValue = newValue!;
                //     });
                //   },
                // ),
                SizedBox(width: size.width * 0.1),
                // DropdownButton(
                //   items: datesList,
                //   value: selectedDateValue,
                //   onChanged: (newValue) {
                //     setState(() {
                //       selectedDateValue = newValue!;
                //     });
                //   },
                // ),
              ],
            ),
            InvoiceCard(size: size),
          ],
        ),
      ),
    );
  }
}

class InvoiceCard extends StatelessWidget {
  const InvoiceCard({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: size.height * 0.4,
          color: Color.fromARGB(255, 218, 218, 218),
        ),
        Positioned(
          top: 25,
          left: 20,
          child: Container(
            width: size.width * 0.9,
            height: size.height * 0.33,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            "MEMO:",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "7:30 PM",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      //SizedBox(width: size.width * 0.45),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.menu),
                      ),
                    ],
                  ),
                  SizedBox(height: size.height * 0.01),
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage:
                            AssetImage("images/blank-profile-photo.jpeg"),
                        radius: 20,
                      ),
                      SizedBox(width: size.width * 0.05),
                      Text(
                        "Anas Almahmudi",
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ],
                  ),
                  SizedBox(height: size.height * 0.01),
                  MySeparator(),
                  SizedBox(height: size.height * 0.01),
                  Text(
                    "Product Name",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 19,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "PCS: 1",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        "2500 LYD",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: size.height * 0.02),
                  MySeparator(),
                  Container(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "Total: 2500 LYD",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Text(
                          "Paid: 2500 LYD",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w900,
                            color: Colors.green,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
