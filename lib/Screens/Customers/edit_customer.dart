import 'package:flutter/material.dart';

class EditCustomer extends StatefulWidget {
  EditCustomer({
    super.key,
  });
  // String cName;
  // int cDebt, cNumber;
  static String routeName = "Edit Customer";

  @override
  State<EditCustomer> createState() => _EditCustomerState();
}

class _EditCustomerState extends State<EditCustomer> {
  TextEditingController _customerNameController = TextEditingController();
  TextEditingController _customerDebtController = TextEditingController();
  TextEditingController _customerNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit Customer"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage("images/blank-profile-photo.jpeg"),
                radius: 20,
              ),
              SizedBox(height: size.height * 0.02),
              Flexible(
                child: TextField(
                  controller: _customerNameController,
                  maxLines: 1,
                  decoration: InputDecoration(
                    label: Text("Edit Customer Name"),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.02),
              Flexible(
                child: TextField(
                  controller: _customerNumberController,
                  maxLines: 1,
                  decoration: InputDecoration(
                    label: Text("Edit Customer Name"),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.02),
              Flexible(
                child: TextField(
                  controller: _customerDebtController,
                  maxLines: 1,
                  decoration: InputDecoration(
                    label: Text("Edit Customer Name"),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// //Padding(
//                             padding: const EdgeInsets.all(20.0),
//                             child: Column(
//                               children: [
//                                 CircleAvatar(
//                                   backgroundImage:
//                                       AssetImage(customerDemo[index].imageURL),
//                                   radius: 3,
//                                 ),
//                                 SizedBox(width: size.width * 0.02),
//                                 Text(
//                                   customerDemo[index].cName,
//                                   style: TextStyle(
//                                     fontWeight: FontWeight.w900,
//                                     fontSize: 20,
//                                   ),
//                                 ),
//                                 SizedBox(height: size.height * 0.02),
//                                 Text(
//                                   customerDemo[index].cPhoneNumber.toString(),
//                                   style: TextStyle(
//                                     color: Colors.grey,
//                                     fontSize: 15,
//                                   ),
//                                 ),
//                                 SizedBox(height: size.height * 0.02),
//                                 Text(
//                                   "Debt ${customerDemo[index].cDebt}\$",
//                                   style: TextStyle(
//                                     color: Colors.redAccent,
//                                     fontSize: 15,
//                                   ),
//                                 ),
//                                 Row(
//                                   children: [
//                                     //add row of buttons
//                                     MyButton(
//                                       size: size,
//                                       buttonText: "Edit",
//                                       onPressed: () {},
//                                       color: Colors.blueAccent,
//                                       textColor: Colors.blue,
//                                     ),
//                                     MyButton(
//                                       size: size,
//                                       buttonText: "View Orders",
//                                       onPressed: () {},
//                                       color: Colors.blue,
//                                       textColor: Colors.white,
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                           ),
//                         );
//                         child:
//                         CustomerCard(
//                           size: size,
//                           customerImage: customerDemo[index].imageURL,
//                           customerName: customerDemo[index].cName,
//                           customerDebt: customerDemo[index].cDebt,
//                         );
//                       }