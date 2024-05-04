/*import 'package:flutter/material.dart';
import 'package:recycling_app/Admin/models/sub_category.dart';
import 'package:recycling_app/presentation/screens/create_order.dart';
import 'package:recycling_app/presentation/shared/colour_constant.dart';
import 'package:recycling_app/presentation/shared/txt.dart';

class AdminCategoryManagement extends StatelessWidget {
  final List<sub_category> sub_cate_list;

  AdminCategoryManagement({required this.sub_cate_list});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: green_color,
      drawerEnableOpenDragGesture: true,
      appBar: AppBar(
        title: Text(
          "Admin",
          style: TextStyle(
            color:green_color,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: green_color,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                height: 640,
                margin: EdgeInsets.only(top: 18),
                padding: EdgeInsets.fromLTRB(5, 15, 5, 3),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                ),
                child: ListView.builder(
                  itemCount: sub_cate_list.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return create_order(
                                  image: sub_cate_list[index].image,
                                  price: sub_cate_list[index].price,
                                  name: sub_cate_list[index].name,
                                );
                              },
                            ),
                          );
                        },
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Column(
                                    children: [
                                      txt(
                                        sub_cate_list[index].name,
                                        green_color,
                                        18,
                                        true,
                                      ),
                                      SizedBox(height: 10),
                                      txt(
                                        "price: ${sub_cate_list[index].price}",
                                        green_color,
                                        18,
                                        false,
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 100,
                                  width: 150,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    image: DecorationImage(
                                      image: AssetImage(sub_cate_list[index].image),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AdminScreen extends StatefulWidget {
  @override
  _AdminScreenState createState() => _AdminScreenState();
}

class _AdminScreenState extends State<AdminScreen> {
  TextEditingController subCategoryNameController = TextEditingController();
  TextEditingController subCategoryImageController = TextEditingController();
  TextEditingController subCategoryPriceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: green_color,
        title: txt("Admin Screen",Colors.white,20,true),),
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

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AdminCategoryManagement(
                        sub_cate_list: [newSubCategory],
                      ),
                    ),
                  );
                }
              },
              child: Text("Add Subcategory"),
            ),
          ],
        ),
      ),
    );
  }
}
*/



/*

import 'package:flutter/material.dart';
import 'package:recycling_app/Admin/models/sub_category.dart';
import 'package:recycling_app/Admin/models/update_category.dart';
import 'package:recycling_app/presentation/screens/create_order.dart';
import 'package:recycling_app/presentation/shared/colour_constant.dart';
import 'package:recycling_app/presentation/shared/txt.dart';

class AdminCategoryManagement extends StatelessWidget {
  final List<sub_category> subCategoryList;

  AdminCategoryManagement({required this.subCategoryList});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: green_color,
      drawerEnableOpenDragGesture: true,
      appBar: AppBar(
        title: Text(
          "Admin",
          style: TextStyle(
            color: green_color,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: green_color,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                height: 640,
                margin: EdgeInsets.only(top: 18),
                padding: EdgeInsets.fromLTRB(5, 15, 5, 3),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                ),
                child: ListView.builder(
                  itemCount: subCategoryList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return UpdateSubCategoryScreen(
                                  subCategory: subCategoryList[index],
                                );
                              },
                            ),
                          );
                        },
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Column(
                                    children: [
                                      txt(
                                        subCategoryList[index].name,
                                        green_color,
                                        18,
                                        true,
                                      ),
                                      SizedBox(height: 10),
                                      txt(
                                        "price: ${subCategoryList[index].price}",
                                        green_color,
                                        18,
                                        false,
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 100,
                                  width: 150,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    image: DecorationImage(
                                      image: AssetImage(subCategoryList[index].image),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


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
        padding: EdgeInsets.all(30.0),
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
              child: Text("Add Subcategory"),
            ),
          ],
        ),
      ),
    );
  }
}








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
              child: Text("Update Subcategory"),
            ),
          ],
        ),
      ),
    );
  }
}
*/




import 'package:flutter/material.dart';
import 'package:recycling_app/Admin/Screens/delete_category.dart';
import 'package:recycling_app/Admin/Screens/sub_category.dart';
import 'package:recycling_app/Admin/Screens/update_category.dart';
import 'package:recycling_app/presentation/shared/colour_constant.dart';
import 'package:recycling_app/presentation/shared/txt.dart';

class AdminCategoryManagement extends StatelessWidget {
  final List<sub_category> subCategoryList;

  AdminCategoryManagement({required this.subCategoryList});

  void deleteSubCategory(String name, String image, String price) {
    int index = subCategoryList.indexWhere((subCategory) =>
    subCategory.name == name &&
        subCategory.image == image &&
        subCategory.price == price);

    if (index != -1) {
      subCategoryList.removeAt(index);
    }
  }

  void _navigateToDeleteSubCategory(BuildContext context, sub_category subCategory) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DeleteSubCategoryScreen(
          subCategory: subCategory,
          onDelete: () {
            deleteSubCategory(subCategory.name, subCategory.image, subCategory.price);
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: green_color,
      drawerEnableOpenDragGesture: true,
      appBar: AppBar(
        title: Text(
          "Admin",
          style: TextStyle(
            color: green_color,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: green_color,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                height: 640,
                margin: EdgeInsets.only(top: 18),
                padding: EdgeInsets.fromLTRB(5, 15, 5, 3),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                ),
                child: ListView.builder(
                  itemCount: subCategoryList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return UpdateSubCategoryScreen(
                                  subCategory: subCategoryList[index],
                                );
                              },
                            ),
                          );
                        },
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Column(
                                    children: [
                                      txt(
                                        subCategoryList[index].name,
                                        green_color,
                                        18,
                                        true,
                                      ),
                                      SizedBox(height: 10),
                                      txt(
                                        "price: ${subCategoryList[index].price}",
                                        green_color,
                                        18,
                                        false,
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 100,
                                  width: 150,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    image: DecorationImage(
                                      image: AssetImage(subCategoryList[index].image),
                                    ),
                                  ),
                                ),
                                IconButton(
                                  icon: Icon(Icons.delete),
                                  onPressed: () {
                                    _navigateToDeleteSubCategory(context, subCategoryList[index]);
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
















