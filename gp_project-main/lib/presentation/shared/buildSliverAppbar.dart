import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recycling_app/presentation/shared/colour_constant.dart';


Widget buildSliverAppbar(String name ,Image imge){
  return SliverAppBar(
    expandedHeight:400,
    pinned: true,
    stretch: true,
    backgroundColor:green_color ,
    flexibleSpace: FlexibleSpaceBar(
   // centerTitle: true,
      title:Text(
        '${name}',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      background: SingleChildScrollView(
        child: Column(
          children: [
            imge,
          ],
        ),
      ),
    ),
  );
}