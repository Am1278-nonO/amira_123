
import 'package:flutter/material.dart';
import 'package:recycling_app/Admin/Screens/sub_category.dart';
import 'package:recycling_app/presentation/shared/colour_constant.dart';
import 'package:recycling_app/presentation/shared/txt.dart';

class AddCategory extends StatefulWidget {
  @override
  _AddCategoryState createState() => _AddCategoryState();
}

class _AddCategoryState extends State<AddCategory> {
  TextEditingController subCategoryNameController = TextEditingController();
  TextEditingController subCategoryImageController = TextEditingController();
  TextEditingController subCategoryPriceController = TextEditingController();

  List<sub_category> subCategoryList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: green_color,
        title: txt("Admin Screen", Colors.white, 20, true),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: subCategoryNameController,
              decoration: InputDecoration(
                labelText: "Subcategory Name",
              ),
            ),
            TextField(
              controller: subCategoryImageController,
              decoration: InputDecoration(
                labelText: "Subcategory Image",
              ),
            ),
            TextField(
              controller: subCategoryPriceController,
              decoration: InputDecoration(
                labelText: "Subcategory Price",
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                green_color,
              ),
              ),
              onPressed: () {
                String name = subCategoryNameController.text;
                String image = subCategoryImageController.text;
                String price = subCategoryPriceController.text;

                if (name.isNotEmpty && image.isNotEmpty && price.isNotEmpty) {
                  sub_category newSubCategory = sub_category(
                    name: name,
                    image: image,
                    price: price,
                  );

                  setState(() {
                    subCategoryList.add(newSubCategory);
                  });

                  subCategoryNameController.clear();
                  subCategoryImageController.clear();
                  subCategoryPriceController.clear();
                }
              },
              child:txt("Add Subcategory",Colors.white,20,false),
            ),
          ],
        ),
      ),
    );
  }
}

