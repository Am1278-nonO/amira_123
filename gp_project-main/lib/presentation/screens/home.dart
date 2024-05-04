// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:recycling_app/data/models/sub_cate.dart';
import 'package:recycling_app/presentation/screens/create_order.dart';

import 'package:recycling_app/presentation/shared/drawer.dart';
import 'package:recycling_app/presentation/shared/txt.dart';

import 'package:recycling_app/presentation/shared/colour_constant.dart';


class Homee extends StatefulWidget {
  Homee({required this.category_desc, required this.category_name});
  String category_name;
  String category_desc;
  @override
  State<Homee> createState() => _HomeeState();
}

class _HomeeState extends State<Homee> {
  List<sub_category_model> sub_cate_list = [
    sub_category_model(
        name: "Cardboard",
        image: "assets/images/paper_sub_cate/Cardboard.webp",
        price: "18.0 LE"),
    sub_category_model(
        price: '25.0 LE',
        name: 'Phone Books',
        image: 'assets/images/paper_sub_cate/phonebook.webp'),
    sub_category_model(
        price: '25.0 LE',
        name: 'Juice Cartons',
        image: 'assets/images/paper_sub_cate/fruit-juice-carton.webp'),
    sub_category_model(
        price: '25.0 LE',
        name: 'Boxes With Fancy \n      Coatings',
        image: 'assets/images/paper_sub_cate/cereal-boxes.webp'),
    sub_category_model(
        price: '25.0 LE',
        name: 'Newspapers',
        image: 'assets/images/paper_sub_cate/newspapers.webp'),
    sub_category_model(
        price: '25.0 LE',
        name: 'Office Paper',
        image: 'assets/images/paper_sub_cate/office-papers.webp'),
    sub_category_model(
        price: '25.0 LE',
        name: 'Magazines',
        image: 'assets/images/paper_sub_cate/magazines.webp'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: green_color,
      drawerEnableOpenDragGesture: true,
      drawer: drawer(),
      appBar: AppBar(
        title: Text(
          "${widget.category_name} types",
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications_on,
              color: Colors.yellow[900],
              size: 30,
            ),
          )
        ],
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
                          topRight: Radius.circular(25))),
                  child: ListView.builder(
                      itemCount: sub_cate_list.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return create_order(image:sub_cate_list[index].image ,price:sub_cate_list[index].price ,name: sub_cate_list[index].name,);
                              }));
                            },
                            child: Card(
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Column(
                                        children: [
                                          txt(sub_cate_list[index].name,
                                              green_color, 18, true),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          txt("price :${sub_cate_list[index].price}",
                                              green_color, 18, false),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: 100,
                                      width: 150,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  sub_cate_list[index].image))),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      })),
            ),
          ],
        ),
      ),
    );
  }
}
