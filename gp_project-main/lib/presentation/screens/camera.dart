import 'package:flutter/material.dart';
import 'package:recycling_app/presentation/shared/colour_constant.dart';
import 'package:recycling_app/presentation/shared/txt.dart';


class camera extends StatelessWidget {
  const camera({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: txt("camera", green_color, 22,false),),
    );
  }
}