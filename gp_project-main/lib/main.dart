import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:recycling_app/Admin/controll_category.dart';
import 'package:recycling_app/Admin/Screens/add_category.dart';
import 'package:recycling_app/Admin/Screens/sub_category.dart';
import 'package:recycling_app/Admin/Screens/update_category.dart';
import 'package:recycling_app/presentation/screens/home.dart';
import 'package:recycling_app/presentation/screens/intro.dart';
import 'package:recycling_app/presentation/screens/navigation_page.dart';
import 'package:recycling_app/presentation/shared/colour_constant.dart';
import 'package:recycling_app/presentation/shared/txt.dart';

import 'Admin/Screens/delete_Account.dart';

void main() {
  runApp(Recycling_app());
}
class Recycling_app extends StatelessWidget {
  const Recycling_app({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: navigation_page()


    );
  }
}
