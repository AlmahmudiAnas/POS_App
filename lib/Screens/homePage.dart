import 'package:flutter/material.dart';
import 'package:pos_application/Screens/All%20Sales/all_sales.dart';
import 'package:pos_application/Screens/Customers/all_customers.dart';
import 'package:pos_application/Screens/New%20Sales/new_sales.dart';
import 'package:pos_application/Screens/Product%20Screen/new_products_screen.dart';
import 'package:pos_application/Screens/Product%20Screen/product_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  static String routeName = "HomePage";

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 233, 233, 233),
      appBar: AppBar(
        title: Center(
          child: Text(
            "POS",
            style: TextStyle(
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
      ),
      drawer: Drawer(
        child: Stack(
          children: [
            ListView(
              padding: EdgeInsets.zero,
              children: [
                DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundImage:
                            AssetImage("images/blank-profile-photo.jpeg"),
                        radius: 40,
                      ),
                      SizedBox(height: size.height * 0.01),
                      Text(
                        "Anas Almahmudi",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: size.height * 0.01),
                      Text(
                        "+218920356023",
                        style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 108, 108, 108),
                        ),
                      ),
                    ],
                  ),
                ),
                ListTile(
                  title: Text('All sales'),
                  onTap: () {
                    Navigator.pushNamed(context, AllSales.routeName);
                  },
                  leading: Icon(
                    Icons.menu_book_outlined,
                    color: Colors.blue,
                  ),
                ),
                ListTile(
                  title: Text('New sale'),
                  onTap: () {
                    Navigator.pushNamed(context, NewSale.routeName);
                  },
                  leading: Icon(
                    Icons.shopping_bag,
                    color: Colors.blue,
                  ),
                ),
                ListTile(
                  title: Text('Products'),
                  onTap: () {
                    Navigator.pushNamed(context, ProductScreen.routeName);
                  },
                  leading: Icon(
                    Icons.savings,
                    color: Colors.blue,
                  ),
                ),
                ListTile(
                  title: Text('Add product'),
                  onTap: () {
                    Navigator.pushNamed(context, NewProductScreen.routeName);
                  },
                  leading: Icon(
                    Icons.add_box_outlined,
                    color: Colors.blue,
                  ),
                ),
                ListTile(
                  title: Text('Statistics'),
                  onTap: () {},
                  leading: Icon(
                    Icons.admin_panel_settings,
                    color: Colors.blue,
                  ),
                ),
                ListTile(
                  title: Text('Customers'),
                  onTap: () {
                    Navigator.pushNamed(context, CustomersScreen.routeName);
                  },
                  leading: Icon(
                    Icons.person,
                    color: Colors.blue,
                  ),
                ),
                Divider(
                  thickness: 1,
                  height: 8,
                ),
                ListTile(
                  title: Text('Categories'),
                  onTap: () {},
                  leading: Icon(
                    Icons.category,
                    color: Colors.blue,
                  ),
                ),
                ListTile(
                  title: Text('Settings'),
                  onTap: () {},
                  leading: Icon(
                    Icons.settings,
                    color: Colors.blue,
                  ),
                ),
                Divider(
                  thickness: 1,
                  height: 8,
                ),
                ListTile(
                  title: Text('Support'),
                  onTap: () {},
                  leading: Icon(
                    Icons.support,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  'Developed By Anas Almahmudi',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: size.height * 0.3,
                child: Image.asset(
                  "images/istockphoto.jpg",
                  fit: BoxFit.fill,
                ),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 4,
                      blurRadius: 5,
                      offset: Offset(0, 5),
                    )
                  ],
                ),
              ),
              SizedBox(height: size.height * 0.03),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Text(
                      "Todays Sales",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.blue[800],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: size.width * 0.37),
                    Text(
                      "1,500 LYD",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.blue[800],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: size.height * 0.03),
              SalesCard(
                size,
                Color.fromARGB(255, 168, 159, 254),
                Color.fromARGB(255, 104, 49, 214),
                Icons.menu_book_outlined,
                "All sales",
                () {
                  Navigator.pushNamed(context, AllSales.routeName);
                },
              ),
              SizedBox(height: size.height * 0.03),
              SalesCard(
                size,
                Color.fromARGB(255, 255, 194, 207),
                Color.fromARGB(255, 238, 82, 155),
                Icons.savings,
                "Products",
                () {
                  Navigator.pushNamed(context, ProductScreen.routeName);
                },
              ),
              SizedBox(height: size.height * 0.03),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28),
                child: TwoButtons(
                  size,
                  () {
                    Navigator.pushNamed(context, CustomersScreen.routeName);
                  },
                  () {
                    Navigator.pushNamed(context, NewSale.routeName);
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Row TwoButtons(
      Size size, VoidCallback customerPress, VoidCallback newSalePress) {
    return Row(
      children: [
        Container(
          width: size.width * 0.40,
          height: size.height * 0.15,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 4,
                blurRadius: 5,
                offset: Offset(0, 5),
              )
            ],
          ),
          child: MaterialButton(
            onPressed: customerPress,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 155, 194, 245),
                  radius: 25,
                  child: Icon(
                    Icons.contact_phone,
                    size: 30,
                    color: Color.fromARGB(255, 69, 95, 214),
                  ),
                ),
                SizedBox(width: size.width * 0.05),
                Text(
                  "Customers",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(width: size.width * 0.05),
        Container(
          width: size.width * 0.40,
          height: size.height * 0.15,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 4,
                blurRadius: 5,
                offset: Offset(0, 5),
              ),
            ],
          ),
          child: MaterialButton(
            onPressed: newSalePress,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 188, 255, 180),
                  radius: 25,
                  child: Icon(
                    Icons.shopping_bag,
                    size: 30,
                    color: Color.fromARGB(255, 98, 238, 82),
                  ),
                ),
                SizedBox(width: size.width * 0.05),
                Text(
                  "New Sales",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Container SalesCard(Size size, Color backgroundColor, Color iconColor,
      IconData iconData, String text, VoidCallback onPressed) {
    return Container(
      width: size.width * 0.85,
      height: size.height * 0.10,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 4,
            blurRadius: 5,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: MaterialButton(
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: backgroundColor,
              radius: 25,
              child: Icon(
                iconData,
                size: 30,
                color: iconColor,
              ),
            ),
            SizedBox(width: size.width * 0.05),
            Text(
              text,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
