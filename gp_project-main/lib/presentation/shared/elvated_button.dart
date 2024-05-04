import 'dart:ffi';

import 'package:flutter/material.dart';

class button_style extends StatelessWidget {
  button_style({required this.Data,this.yourcolor});
  String Data;
  Color? yourcolor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 5,vertical: 0),
        alignment: Alignment.center,
        child: Text(Data, style: TextStyle(color:yourcolor==null? Colors.white:yourcolor!, fontSize: 18)),
        height: 50,
        //
        padding: EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
            border:
                Border.all(color:yourcolor==null?Color.fromARGB(255, 255, 255, 255):yourcolor!, width: 1),
            borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}
