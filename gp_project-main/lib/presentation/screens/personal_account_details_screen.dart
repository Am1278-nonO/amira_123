
import 'package:flutter/material.dart';

import 'package:recycling_app/presentation/shared/buildSliverAppbar.dart';
import 'package:recycling_app/presentation/shared/characterInfo.dart';
import 'package:recycling_app/presentation/shared/divider.dart';


import '../../presentation/shared/colour_constant.dart';

class personal_account_details_screen extends StatelessWidget{
String name ;
Image image;
String email;
String address;
String condition;
String credit_card;
int phone ;
personal_account_details_screen({ required this.name, required this.image,required this.email,required this.address,
  required this.condition,required this.credit_card,required this.phone} );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Colors.white ,
     body: CustomScrollView(
      slivers: [
       buildSliverAppbar(name,
          Image.asset('assets/images/handsome-man-with-his-arms-crossed-removebg-previewnew.png',
          ),) ,
       SliverList(delegate: SliverChildListDelegate(
         [
           Container(
             margin: EdgeInsets.fromLTRB(14, 14, 14, 0),
             padding: EdgeInsets.all(8),
             child: Column(
               mainAxisAlignment: MainAxisAlignment.start,
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 characterInfo('name : ','abdelrahman mahmoud abdallah '),
                 divider(2, 20, green_color,230),

                 characterInfo('job : ',' Doctor'),
                 divider(2, 20, green_color,250),

                 characterInfo('email : ',' am638@gmail.com'),
                 divider(2, 20,  green_color,230),
                 characterInfo('credit_card : ',' 1wee4555'),
                 divider(2, 20, green_color,180),
                 characterInfo('address : ',' Beni Seuf'),
                 divider(2, 20, green_color,210),
                 characterInfo('phoneNumber : ',' 01550386172'),
                 divider(2, 20, green_color,150),
                 characterInfo('condition : ',' seller'),
                 divider(2, 20, green_color,190),
               SizedBox(height: 20,),
               ],
             ),
           ),
           SizedBox(height: 500,),
         ],
       ))
      ],
     ),
    );
  }

}