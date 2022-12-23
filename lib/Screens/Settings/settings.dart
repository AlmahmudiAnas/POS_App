import 'package:flutter/material.dart';
import 'package:pos_application/My%20Widgets/custom_shap.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});
  static String routeName = "Settings Screen";

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 223, 223, 223),
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
        child: Column(
          children: [
            SettingsFirstCardList(
              size: size,
              firstText: "Name",
              secondText: 'Mr. Anas',
              isThereIcon: true,
              icon: Icons.edit,
            ),
            SizedBox(height: size.height * 0.002),
            SettingsFirstCardList(
              size: size,
              firstText: 'Business name',
              icon: Icons.edit,
              isThereIcon: true,
              secondText: 'Software developer',
            ),
            SizedBox(height: size.height * 0.002),
            SettingsFirstCardList(
              size: size,
              firstText: 'Phone',
              icon: Icons.edit,
              isThereIcon: false,
              secondText: '+218916877297',
            ),
            SizedBox(height: size.height * 0.05),
          ],
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
