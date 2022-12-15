import 'package:flutter/material.dart';
import 'package:pos_application/Modul/customer_list.dart';
import 'package:pos_application/Modul/invoice_list.dart';
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
            ...List.generate(
              invoiceList.length,
              (index) => Column(
                children: [
                  dateTotalSales(),
                  InvoiceCard(
                    size: size,
                    pcs: invoiceList[index].pcs,
                    seller: invoiceList[index].seller,
                    totalPrice: invoiceList[index].totalPrice,
                    product: invoiceList[index].product,
                    productPrice: invoiceList[index].productPrice,
                    time: invoiceList[index].time,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding dateTotalSales() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "07.06.2022",
            style: TextStyle(
              fontSize: 22,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "Total: 1,516.00 LYD",
            style: TextStyle(
              fontSize: 22,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
