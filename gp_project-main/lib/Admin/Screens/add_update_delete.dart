/*import 'package:flutter/material.dart';
import 'package:recycling_app/Admin/models/add_category.dart';
import 'package:recycling_app/Admin/models/delete_category.dart';
import 'package:recycling_app/Admin/models/sub_category.dart';
import 'package:recycling_app/Admin/models/update_category.dart';
import 'package:recycling_app/presentation/shared/colour_constant.dart';
import 'package:recycling_app/presentation/shared/txt.dart';

class SubCategoryManagementScreen extends StatefulWidget {
  @override
  State<SubCategoryManagementScreen> createState() => _SubCategoryManagementScreenState();
}

class _SubCategoryManagementScreenState extends State<SubCategoryManagementScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: green_color,
        title: txt("Subcategory Management",Colors.white,20,true),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {
                    return AddCategory() ;
                  }),
                );
              },

              child: Text('Add Subcategory'),
            ),
            ElevatedButton(

        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) {
              return UpdateSubCategoryScreen( subCategory: sub_category(price: '',name: '',image: ''),);
            }),
          );
        },
              child: Text('Update Subcategory'),
            ),


            ElevatedButton(

              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {
                    return DeleteSubCategoryScreen(subCategory: sub_category(price: '',name: '',image: ''), onDelete: (){});
                  }),
                );
              },
              child: Text('Delete Subcategory'),
            ),
          ],
        ),
      ),
    );
  }
}

*/














import 'package:flutter/material.dart';
import 'package:recycling_app/Admin/Screens/ShowAllUsers.dart';
import 'package:recycling_app/Admin/Screens//add_category.dart';
import 'package:recycling_app/Admin/Screens/delete_category.dart';
import 'package:recycling_app/Admin/Screens/sub_category.dart';
import 'package:recycling_app/Admin/Screens/update_category.dart';
import 'package:recycling_app/presentation/shared/colour_constant.dart';
import 'package:recycling_app/presentation/shared/txt.dart';

class SubCategoryManagementScreen extends StatelessWidget {
  void _navigateToAddSubCategory(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) {
        return AddCategory();
      }),
    );
  }

  void _navigateToUpdateSubCategory(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) {
        return UpdateSubCategoryScreen(
          subCategory: sub_category(price: '', name: '', image: ''),
        );
      }),
    );
  }

  void _navigateToDeleteSubCategory(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) {
        return DeleteSubCategoryScreen(
          subCategory: sub_category(price: '', name: '', image: ''),
          onDelete: () {},
        );
      }),
    );
  }
  void _navigateToShowAllUsers(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) {
        return ShowAllUsers();
      }),
    );
  }
  ElevatedButton _buildElevatedButton(String text, Function onPressed) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
          green_color,
        ),
      ),
      onPressed: onPressed as void Function()?,
      child: txt(text,Colors.white,20,false),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: green_color,
        title: txt("Subcategory Management", Colors.white, 20, true),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _buildElevatedButton('Add Subcategory', () => _navigateToAddSubCategory(context)),
            SizedBox(height: 20,),
            _buildElevatedButton('Update Subcategory', () => _navigateToUpdateSubCategory(context)),
            SizedBox(height: 20,),
            _buildElevatedButton('Delete Subcategory', () => _navigateToDeleteSubCategory(context)),
            SizedBox(height: 20,),
            _buildElevatedButton('Show all user', () => _navigateToShowAllUsers(context)),
            SizedBox(height: 20,),
            _buildElevatedButton('Discard Account', () => _navigateToUpdateSubCategory(context)),

          ],
        ),
      ),
    );
  }
}
