
import 'package:flutter/material.dart';
import 'package:recycling_app/presentation/shared/colour_constant.dart';

Widget iconHome(){
  return      Container(
    decoration: ShapeDecoration(
      color: green_color,
      shape: RoundedRectangleBorder(
        borderRadius:
        BorderRadius.horizontal(
          left: Radius.circular(15),right: Radius.circular(15),



        ),
        side: const BorderSide(
          color: green_color,
          width: 2,

        ),
      ),
    ),


    child:  Icon(Icons.home_filled,
      size: 40,
      color: Colors.grey.shade100,),);
}