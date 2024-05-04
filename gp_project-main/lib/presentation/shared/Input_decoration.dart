import 'package:flutter/material.dart';

const decorationTextfield = InputDecoration(
  
  // To delete borders
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color:Color.fromARGB(64, 0, 0, 0)),
    // borderSide: BorderSide.none,
    borderRadius: BorderRadius.all(Radius.circular(25)),
  ),
 
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(25)),
    borderSide: BorderSide(
      
      color: Colors.grey,
    ),
  ),
  // fillColor: Colors.red,
  // filled: true,
  
);