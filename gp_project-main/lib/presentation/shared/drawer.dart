import 'package:flutter/material.dart';
import 'package:recycling_app/presentation/screens/commmon_Question.dart';
import 'package:recycling_app/presentation/screens/contact_us.dart';
import 'package:recycling_app/presentation/screens/favourite_Page.dart';
import 'package:recycling_app/presentation/screens/more.dart';
import 'package:recycling_app/presentation/screens/payment.dart';
import 'package:recycling_app/presentation/screens/personal_account_details_screen.dart';
import 'package:recycling_app/presentation/shared/colour_constant.dart';
import 'package:recycling_app/presentation/shared/divider.dart';
import 'package:recycling_app/presentation/shared/txt.dart';

class drawer extends StatelessWidget {
  const drawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      // backgroundColor: green_color,
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: txt('Amira Mahmoud', Colors.white, 18, false),
            accountEmail: txt('am6391@gmail.com', Colors.white, 18, false),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage("assets/images/iron wire.jpeg"),
              backgroundColor: Colors.white,
            ),
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      "assets/images/cooper.jpeg",
                    ))),
          ),
          ListTile(
              title: Text("Personal account"),
              leading: Icon(
                Icons.person,
                size: 30,
                color: green_color,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => personal_account_details_screen(
                      name: 'Abdelrahman Mahmoud',
                      image: Image.asset(
                          'assets/assetGP/handsome-man-with-his-arms-crossed.jpg'),
                      email: 'am63@gmail.com',
                      address: 'Beni Seuf',
                      condition: 'seller',
                      credit_card: '1235',
                      phone: 0101222222233),
                  ),
                );
              }),
          divider(0.5, 1, green_color, 30),
          ListTile(
              title: Text("payment"),
              leading: Icon(
                Icons.payment,
                size: 30,
                color: green_color,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => payment(),
                  ),
                );
              }),
          divider(0.5, 3, green_color, 30),
          ListTile(
              title: Text("favourite"),
              leading: Icon(
                Icons.favorite,
                size: 30,
                color: green_color,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => favouritePage(
                    favouriteItems: [],
                  ),
                  ),
                );
              }),
          divider(0.5, 3, green_color, 30),
          ListTile(
              title: Text("common questions"),
              leading: Icon(
                Icons.question_mark,
                size: 30,
                color: green_color,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => commonQuestion(),
                  ),
                );
              }),
          divider(0.5, 3, green_color, 30),
          ListTile(
              title: Text("Contact us"),
              leading: Icon(
                Icons.headset_mic,
                size: 30,
                color: green_color,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => contactUs(),
                  ),
                );
              }),
          divider(0.5, 3, green_color, 30),
          ListTile(
              title: Text("terms and conditions"),
              leading: Icon(
                Icons.policy,
                size: 30,
                color: green_color,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => more(),
                  ),
                );
              }),
        ],
      ),
    );
  }
}
