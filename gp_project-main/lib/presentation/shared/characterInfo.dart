import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'colour_constant.dart';

Widget  characterInfo(String title ,String value){
  return RichText(
      maxLines: 1,
            overflow: TextOverflow.ellipsis,
            text:TextSpan(
              children: [
                TextSpan(
                  text: title,
                  style: TextStyle(
                    color:green_color,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                TextSpan(
                  text: value,
                  style: TextStyle(
                    color:green_color,
                    fontSize: 18,
                  ),
                ),
              ]
            ) );
}