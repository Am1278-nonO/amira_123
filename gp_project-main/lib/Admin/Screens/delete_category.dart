import 'package:flutter/material.dart';
import 'package:recycling_app/Admin/Screens/sub_category.dart';
import 'package:recycling_app/presentation/shared/colour_constant.dart';
import 'package:recycling_app/presentation/shared/txt.dart';

class DeleteSubCategoryScreen extends StatelessWidget {
  final sub_category subCategory;
  final Function onDelete;

  DeleteSubCategoryScreen({required this.subCategory, required this.onDelete});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: green_color,
        title: txt("Delete Subcategory", Colors.white, 20, true),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            txt(
              "Are you sure you want to delete ${subCategory.name}?",
             Colors.white,20,false
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  green_color,
                ),
              ),
              onPressed: () {
                // Call the onDelete function passed from the parent widget
                onDelete();
                Navigator.pop(context);
              },
              child: txt("Delete Subcategory",Colors.white,20,false),
            ),
          ],
        ),
      ),
    );
  }
}

