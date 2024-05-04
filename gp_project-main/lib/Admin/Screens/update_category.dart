import 'package:flutter/material.dart';
import 'package:recycling_app/Admin/Screens/sub_category.dart';
import 'package:recycling_app/presentation/shared/txt.dart';

import '../../presentation/shared/colour_constant.dart';

class UpdateSubCategoryScreen extends StatefulWidget {
  final sub_category subCategory;

  UpdateSubCategoryScreen({required this.subCategory});

  @override
  _UpdateSubCategoryScreenState createState() => _UpdateSubCategoryScreenState();
}

class _UpdateSubCategoryScreenState extends State<UpdateSubCategoryScreen> {
  TextEditingController subCategoryNameController = TextEditingController();
  TextEditingController subCategoryImageController = TextEditingController();
  TextEditingController subCategoryPriceController = TextEditingController();

  @override
  void initState() {
    super.initState();
    subCategoryNameController.text = widget.subCategory.name;
    subCategoryImageController.text = widget.subCategory.image;
    subCategoryPriceController.text = widget.subCategory.price;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: green_color,
        title: txt("Update Subcategory", Colors.white, 20, true),
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
                backgroundColor:MaterialStateProperty.all(
                  green_color,
                ),
              ),
              onPressed: () {
                String name = subCategoryNameController.text;
                String image = subCategoryImageController.text;
                String price = subCategoryPriceController.text;

                if (name.isNotEmpty && image.isNotEmpty && price.isNotEmpty) {
                  sub_category updatedSubCategory = sub_category(
                    name: name,
                    image: image,
                    price: price,
                  );

                  // Perform the update operation here

                  Navigator.pop(context, updatedSubCategory);
                }
              },
              child: txt("Update Subcategory",Colors.white,20,false),
            ),
          ],
        ),
      ),
    );
  }
}
