
import 'package:flutter/material.dart';
import 'package:recycling_app/presentation/shared/txt.dart';

import 'colour_constant.dart';

Widget buildSliverToolBox (String text,double height){
  return  SliverToBoxAdapter(
    child: Padding(
      padding: EdgeInsets.all(20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          height:height,
          color: Colors.grey.shade100,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: txt('$text',
                      green_color, 15,false),
                ),
              ],
            ),
          ),
        ),
      ),
    ),



  );

}