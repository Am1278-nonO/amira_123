
import 'package:flutter/material.dart';
import 'package:recycling_app/presentation/shared/colour_constant.dart';

showSnackBar(BuildContext context, String text) {
  return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    padding: const EdgeInsets.symmetric(vertical: 3,horizontal: 10),
    backgroundColor: logo_color,
    duration: const Duration(seconds: 2),
    content: Text(text,style: TextStyle(color: Colors.black),),
    action: SnackBarAction(
      label: "close",
      onPressed: () {},
      textColor: Colors.black,
    ),
  ));
}
