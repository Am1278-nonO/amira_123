import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recycling_app/presentation/screens/commmon_Question.dart';
import 'package:recycling_app/presentation/screens/contact_us.dart';
import 'package:recycling_app/presentation/screens/favourite_Page.dart';
import 'package:recycling_app/presentation/screens/payment.dart';
import 'package:recycling_app/presentation/screens/personal_account_details_screen.dart';
import 'package:recycling_app/presentation/screens/terms_condition.dart';
import 'package:recycling_app/presentation/shared/colour_constant.dart';
import 'package:recycling_app/presentation/shared/divider.dart';

import 'package:recycling_app/presentation/shared/item_info.dart';

import 'package:recycling_app/presentation/shared/txt.dart';

class more extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: green_color,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: green_color,
        leading: Container(
          padding: EdgeInsets.all(5),
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notification_important,
              size: 35,
            ),
            color: Colors.white,
          ),
        ),
        actions: [
          Container(
            padding: EdgeInsets.all(5),
            child: txt('more', Colors.white, 25, false),
          ),
          Container(
            padding: EdgeInsets.all(5),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.menu,
                size: 35,
              ),
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage("assets/images/circle image.png"),
                  backgroundColor: Colors.grey.shade300,
                  radius: 50,
                ),
                SizedBox(width: 30),
                txt('mohamed ashraf', Colors.white, 25, false),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              height: 550,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
              ),
              child: ListView(children: [
                SizedBox(
                  height: 3,
                ),
                item_info(
                  Icon(
                    Icons.person,
                    size: 35,
                    color: green_color,
                  ),
                  'personal account',
                  personal_account_details_screen(
                      name: 'Abdelrahman Mahmoud',
                      image: Image.asset(
                          'assets/assetGP/handsome-man-with-his-arms-crossed.jpg'),
                      email: 'am63@gmail.com',
                      address: 'Beni Seuf',
                      condition: 'seller',
                      credit_card: '1235',
                      phone: 0101222222233),
                  context,
                ),

                SizedBox(
                  height: 3,
                ),
                divider(1, 4, green_color, 30),
                SizedBox(
                  height: 18,
                ),
                item_info(
                  Icon(
                    Icons.payment,
                    size: 35,
                    color: green_color,
                  ),
                  'Payment',
                  payment(),
                  context,
                ),
                SizedBox(
                  height: 3,
                ),
                divider(1, 2, green_color, 30),
                SizedBox(
                  height: 18,
                ),
                item_info(
                  Icon(Icons.favorite, size: 35, color: green_color),
                  'favourite',
                  favouritePage(
                    favouriteItems: [],
                  ),
                  context,
                ),
                SizedBox(
                  height: 3,
                ),
                divider(1, 2, green_color, 30),
                SizedBox(
                  height: 18,
                ),
                item_info(
                  Icon(
                    Icons.help_outline_outlined,
                    size: 35,
                    color: green_color,
                  ),
                  'common questions',
                  commonQuestion(),
                  context,
                ),
                SizedBox(
                  height: 3,
                ),
                divider(1, 2, green_color, 30),
                SizedBox(
                  height: 18,
                ),
                item_info(
                  Icon(Icons.headset_mic_rounded, size: 35, color: green_color),
                  'Contact us',
                  contactUs(),
                  context,
                ),
                SizedBox(
                  height: 5,
                ),
                divider(1, 2, green_color, 30),
                SizedBox(
                  height: 18,
                ),
                // SizedBox(height: 20,),
                item_info(
                  Icon(Icons.library_books_rounded,
                      size: 35, color: green_color),
                  'terms and conditions',
                  termsAndCondition(),
                  context,
                ),

                SizedBox(
                  height: 3,
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
