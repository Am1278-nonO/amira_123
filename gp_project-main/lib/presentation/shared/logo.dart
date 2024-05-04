import 'package:flutter/material.dart';
import 'package:recycling_app/presentation/shared/colour_constant.dart';

class logo extends StatelessWidget {
  const logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Center(
          child: Container(
            width: 150,
            height: 80,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(250),bottomRight: Radius.circular(250)), 
               color: logo_color,)
            ),
          ),
        
      
      Positioned(
        
        left: 85,
        child: Text(
          "RoBaBikya",
          style:
              TextStyle(fontFamily: "Schyler", fontSize: 50, letterSpacing: 5,fontWeight: FontWeight.w500),
        ),
      )
    ]);
  }
}
