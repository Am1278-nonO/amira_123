import 'package:flutter/material.dart';
import 'package:recycling_app/data/models/category.dart';
import 'package:recycling_app/presentation/screens/home.dart';

import 'package:recycling_app/presentation/shared/colour_constant.dart';

import 'package:recycling_app/presentation/shared/drawer.dart';

import 'package:recycling_app/presentation/shared/txt.dart';

class category extends StatefulWidget {
  category({super.key});

  @override
  State<category> createState() => _categoryState();
}

class _categoryState extends State<category> {
  String text = 'amira';
  List<category_model> listCate = [
    category_model(
        describition:
            "Recycling paper has multiple environmental benefits. It helps save trees by reducing the demand for virgin wood pulp, conserves water and energy, and reduces air pollution associated with paper production. Recycling paper also helps divert waste from landfills, which reduces greenhouse gas emissions and promotes a circular economy.",
        name: "Paper",
        image: "assets/images/paper.png"),
    category_model(
        describition:
            "Recycling glass offers several environmental benefits. It helps save energy and reduce greenhouse gas emissions because recycling glass requires less energy compared to producing new glass from raw materials. Additionally, recycling glass reduces the demand for natural resources, preserves landfill space, and decreases pollution associated with glass manufacturing",
        name: "Glass",
        image: "assets/images/glass.png"),
    category_model(
        describition:
            "Recycling plastic offers numerous environmental benefits. It helps conserve energy by reducing the need for virgin plastic production, decreases greenhouse gas emissions, and diverts plastic waste from landfills and natural habitats. Recycling plastic also helps conserve natural resources, such as crude oil, which is a raw material for plastic production ",
        name: "Plastic",
        image: "assets/images/plastic.png"),
    category_model(
        describition:
            "recycling cans is a sustainable practice that conserves resources, saves energy, reduces environmental impact, and supports a circular economy. It is an essential part of waste management and contributes to a cleaner, greener future.",
        name: "Cans",
        image: "assets/images/cans.png")
  ];

  bool abbearing_search = false;

  @override
  void initState() {
    abbearing_search = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: green_color,
      drawerEnableOpenDragGesture: true,
      drawer: drawer(),
      appBar: AppBar(
        title: Text(
          'hello ${text.toString()}',
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications_on,
                color: Colors.yellow[900],
                size: 30,
              ))
        ],
        backgroundColor: green_color,
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                height: 640,
                margin: EdgeInsets.only(top: 18),
                padding: EdgeInsets.fromLTRB(10, 10, 10, 3),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25))),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: listCate.length, // Number of cards
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: 350, // Width of each card
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return Homee(
                                category_desc: listCate[index].describition,
                                category_name: listCate[index].name,
                              );
                            }));
                          },
                          child: Card(
                            margin: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 30),
                            color: Colors.white,
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 30,
                                ),
                                Image.asset(
                                  listCate[index]
                                      .image, // Replace with your image URL
                                  height: 200, // Height of the image
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                txt(listCate[index].name, green_color, 24,
                                    false),
                                SizedBox(
                                  height: 40,
                                ),
                                Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text(
                                      listCate[index].describition,
                                    ))
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
