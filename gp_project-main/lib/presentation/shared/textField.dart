import 'package:flutter/material.dart';
import 'package:recycling_app/presentation/shared/colour_constant.dart';

class text_field extends StatelessWidget {
  text_field({required this.name});
  String name;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 6.0, 8.0, 8.0),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 10),
          // focusedBorder: OutlineInputBorder(
          //   borderRadius: BorderRadius.circular(20),
          //   borderSide: BorderSide(
          //     color: green_color,
          //   ),
          // ),
          label: Text(name),
          
          
          
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(
              color: green_color,
            ),
          ),
        ),
      ),
    );
  }
}
