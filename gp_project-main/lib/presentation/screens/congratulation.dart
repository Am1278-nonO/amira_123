
import 'package:flutter/material.dart';
import 'package:recycling_app/presentation/shared/appBar.dart';
import 'package:recycling_app/presentation/shared/txt.dart';


class Congratulation extends StatelessWidget{
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
         Padding(
           padding: const EdgeInsets.all(5.0),
           child: Container(
           height: 300,
           width: 300,
           decoration: const BoxDecoration(
             image: DecorationImage(
                 image: AssetImage('assets/assetGP/IMG-20231024-WA0012GPAUCTION.jpg'),
                 fit: BoxFit.cover),
           ),
           //color: Color(0xffCACACA),

           ),
         ),
   SizedBox(
       height: 80,
   ),
           Padding(
             padding: const EdgeInsets.all(10.0),
             child: Container(
                child: txt('Congratulations, you won the auction',Color(0xff497126),30,false),

             ),
           ),
           SizedBox(
             height: 50,
           ),
Container(

  child:Row

    (
mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [

        Container(
            decoration: ShapeDecoration(
              color: Color(0xff497126),
              shape: RoundedRectangleBorder(
                borderRadius:
                BorderRadius.horizontal(
                  left: Radius.circular(15),right: Radius.circular(15),



                ),
                side: const BorderSide(
                  color: Color(0xff497126),
                  width: 2,

                ),
              ),
            ),


            child:  Icon(Icons.home_filled,
                size: 50,
              color: Colors.grey.shade100,),),


    ],
  ),

),

],),
     ),

    );
  }}
