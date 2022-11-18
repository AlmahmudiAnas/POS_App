import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  static String routeName = "HomePage";

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 233, 233, 233),
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu),
          ),
        ],
        title: Center(
          child: Text(
            "POS",
            style: TextStyle(
              fontWeight: FontWeight.w900,
            ),
          ),
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
              ),
              SizedBox(height: size.height * 0.03),
              SalesCard(
                size,
                Color.fromARGB(255, 255, 194, 207),
                Color.fromARGB(255, 238, 82, 155),
                Icons.savings,
                "Products",
              ),
              SizedBox(height: size.height * 0.03),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28),
                child: TwoButtons(size),
              )
            ],
          ),
        ),
      ),
    );
  }

  Row TwoButtons(Size size) {
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
            onPressed: () {},
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 245, 155, 174),
                  radius: 25,
                  child: Icon(
                    Icons.contact_phone,
                    size: 30,
                    color: Color.fromARGB(255, 255, 0, 157),
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
            onPressed: () {},
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
      ],
    );
  }

  Container SalesCard(Size size, Color backgroundColor, Color iconColor,
      IconData iconData, String text) {
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
        onPressed: () {},
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
