import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget divider(double thick,double height,Color color,double end){
  return Divider(

      thickness: thick,
      height: height,
      color:color,
     endIndent: end,
  );
}