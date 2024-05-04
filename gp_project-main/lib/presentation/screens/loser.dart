
import 'package:flutter/material.dart';
import 'package:recycling_app/presentation/shared/appBar.dart';

import 'package:recycling_app/presentation/shared/txt.dart';


class Loser extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(


    appBar:PreferredSize(
    preferredSize: Size(double.infinity, 110),
    child: appBar('Auction ', 'fininsh',

    Colors.red,),
    ),

      body: Container(

        padding: EdgeInsets.all(20),
        width: double.infinity,
        height: double.infinity,



        child: Column(
          children: [
            Container(
              height: 300,
              width: 450,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/assetGP/IMG-20231024-WA0020loser.jpg'),
                    fit: BoxFit.cover),
              ),
              //color: Color(0xffCACACA),

            ),
            SizedBox(
              height: 50,
            ),
            Container(
            child:  Column(
                children: [
                   Padding(
                     padding: const EdgeInsets.all(10.0),
                     child:txt('sorry, someone else won the Auction ', Color(0xff497126), 30,false),

                   ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: txt('Better luck next time ', Colors.red, 30,false),
                  ),
                ],
              )


            ),
            
          ],),
      ),
    );
  }}
