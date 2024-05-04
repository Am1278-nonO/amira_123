import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';

import 'package:recycling_app/presentation/screens/camera.dart';
import 'package:recycling_app/presentation/screens/cate.dart';




import 'package:recycling_app/presentation/screens/follow_Auctions.dart';
import 'package:recycling_app/presentation/screens/follow_order.dart';

import 'package:recycling_app/presentation/screens/more.dart';
import 'package:recycling_app/presentation/shared/colour_constant.dart';

class navigation_page extends StatefulWidget {
   navigation_page({super.key});

  @override
  State<navigation_page> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<navigation_page> {
  final PageController _pageController = PageController();
int currentPage =0;

 
  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        
        margin: EdgeInsets.only(top: 10, bottom: 35),
        height: 60,
        width: 60,
        child: FloatingActionButton(
          elevation: 18,
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
                bottomLeft: Radius.circular(20),
                topRight: Radius.circular(20)),
            side: BorderSide(width: 3, color: Colors.grey.shade200),
          ),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) {
                return follow_Auction();
              }),
            );
          },
          child:Icon(
                  Icons.gavel_outlined,
                  color: green_color,size: 40,
                ),
        ),
      ), 
      bottomNavigationBar: CupertinoTabBar(
          backgroundColor: green_color,
          height: 60,
          border: Border.all(
            
            color: Colors.white
            
          ),
          onTap: (index) {
            // navigate to the tabed page
            _pageController.jumpToPage(index);
            setState(() {
              currentPage = index;
            });
            

            // print(   "---------------    $index "  );
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: currentPage == 0 ? Colors.white : Color(0xffB4E0D1)
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Container(margin: EdgeInsets.only(right: 40),
                  child: Icon(
                    Icons.camera_alt_outlined,
                    color: currentPage == 1 ?  Colors.white : Color(0xffB4E0D1),
                  ),
                ),
                label: ""),
            
            BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(left: 40),
                  child: Icon(
                    Boxicons.bxs_package,
                    color: currentPage == 2 ? Colors.white : Color(0xffB4E0D1),
                  ),
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  
                  Icons.menu,
                  color: currentPage == 3 ?  Colors.white : Color(0xffB4E0D1),
                  
                ),
                label: ""),
          ]),
      body: PageView(
        onPageChanged: (index) {
        },
        physics: const NeverScrollableScrollPhysics(),
        controller: _pageController,
        children: [
           category(),
           camera(),
           Follow_order(),
           more(),
          
        ],
      ),
    ); }
}