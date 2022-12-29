// import 'package:flutter/material.dart';
// import 'package:pos_application/My%20Widgets/custom_shap.dart';

// class SettingsScreen extends StatelessWidget {
//   static String routeName = "Settings Screen";
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Scaffold(
//       backgroundColor: Color.fromARGB(255, 223, 223, 223),
//       appBar: AppBar(
//         title: Text('Settings'),
//       ),
//       body: ListView(
//         children: [
//           ListTile(
//             title: Text('Notifications'),
//             trailing: Switch(
//               value: true,
//               onChanged: (value) {
//                 // Update notification settings
//               },
//             ),
//           ),
//           ListTile(
//             title: Text('Dark mode'),
//             trailing: Switch(
//               value: false,
//               onChanged: (value) {
//                 // Update dark mode setting
//               },
//             ),
//           ),
//           ListTile(
//             title: Text('Privacy policy'),
//             onTap: () {
//               // Navigate to privacy policy screen
//             },
//           ),
//           ListTile(
//             title: Text('Sign out'),
//             onTap: () {
//               // Sign out of the app
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:pos_application/My%20Widgets/custom_shap.dart';
import 'package:pos_application/My%20Widgets/my_button.dart';

class Settings extends StatelessWidget {
  Settings({super.key});
  static String routeName = "Settings Screen";
  bool notificationSwitch = true;
  bool darkModeSwitch = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 223, 223, 223),
      //appBar: TriangleAppBar(),
      appBar: AppBar(
        leading: Container(),
        toolbarHeight: size.height * 0.26,
        backgroundColor: Colors.transparent,
        elevation: 0,
        flexibleSpace: ClipPath(
          clipper: Customshape(),
          child: Container(
            height: size.height * 0.6,
            width: MediaQuery.of(context).size.width,
            color: Colors.blue,
            child: Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('images/blank-profile-photo.jpeg'),
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // SettingsFirstCardList(
              //   size: size,
              //   firstText: "Name",
              //   secondText: 'Mr. Anas',
              //   isThereIcon: true,
              //   icon: Icons.edit,
              // ),
              // SizedBox(height: size.height * 0.002),
              // SettingsFirstCardList(
              //   size: size,
              //   firstText: 'Business name',
              //   icon: Icons.edit,
              //   isThereIcon: true,
              //   secondText: 'Software developer',
              // ),
              // SizedBox(height: size.height * 0.002),
              // SettingsFirstCardList(
              //   size: size,
              //   firstText: 'Phone',
              //   icon: Icons.edit,
              //   isThereIcon: false,
              //   secondText: '+218916877297',
              // ),
              // SizedBox(height: size.height * 0.05),
              // ListView(
              //   children: [
              //     Container(
              //       decoration: BoxDecoration(
              //         color: Colors.white,
              //         borderRadius: BorderRadius.circular(15),
              //       ),
              //       child: ListTile(
              //         title: Text('Notification'),
              //         trailing: Switch(
              //           value: notificationSwitch,
              //           onChanged: (value) {
              //             notificationSwitch = value;
              //           },
              //         ),
              //       ),
              //     ),
              //     Container(
              //       decoration: BoxDecoration(
              //         color: Colors.white,
              //         borderRadius: BorderRadius.circular(15),
              //       ),
              //       child: ListTile(
              //         title: Text('Dark mode'),
              //         trailing: Switch(
              //           value: darkModeSwitch,
              //           onChanged: (value) {
              //             darkModeSwitch = value;
              //           },
              //         ),
              //       ),
              //     ),
              //   ],
              // ),
              Text(
                'Account',
                style: TextStyle(
                  fontSize: 23,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: size.height * 0.01),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: GestureDetector(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Anas Almahmudi",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(height: size.height * 0.003),
                            Text(
                              "anesmedia263@gmail.com",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_forward_ios,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.03),
              Text(
                'App settings',
                style: TextStyle(
                  fontSize: 23,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: size.height * 0.005),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      // appSettingsRow('Notifications', () {
                      //   print('Notification pressed');
                      // }),
                      ListTile(
                        title: Text('Notifications'),
                        trailing: Icon(Icons.arrow_forward_ios),
                        onTap: () {},
                      ),
                      Divider(
                        thickness: 2,
                        height: 10,
                      ),
                      ListTile(
                        title: Text('Dark mode'),
                        trailing: Icon(Icons.arrow_forward_ios),
                        onTap: () {},
                      ),
                      Divider(
                        thickness: 2,
                        height: 10,
                      ),
                      ListTile(
                        title: Text('Language'),
                        trailing: Icon(
                          (Icons.arrow_forward_ios),
                        ),
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.01),
              Center(child: Text("@Copy rights")),
              SizedBox(height: size.height * 0.1),
              MyButton(
                  size: size,
                  buttonText: "Log out",
                  onPressed: () {},
                  color: Colors.blue,
                  textColor: Colors.white)
            ],
          ),
        ),
      ),
    );
  }
}

class SettingsFirstCardList extends StatelessWidget {
  SettingsFirstCardList({
    Key? key,
    required this.size,
    required this.firstText,
    required this.icon,
    required this.isThereIcon,
    required this.secondText,
  }) : super(key: key);

  final Size size;
  final String firstText, secondText;
  bool isThereIcon;
  IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: size.width,
          height: size.height * 0.05,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  firstText,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                  ),
                ),
                Spacer(),
                Text(
                  secondText,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: size.width * 0.02),
                isThereIcon
                    ? IconButton(
                        onPressed: () {},
                        icon: Icon(
                          icon,
                          color: Colors.grey,
                        ),
                      )
                    : Container(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
