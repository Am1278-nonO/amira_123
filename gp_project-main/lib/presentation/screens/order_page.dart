import 'package:flutter/material.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';
import 'package:recycling_app/presentation/shared/colour_constant.dart';
import 'package:recycling_app/presentation/shared/elvated_button.dart';
import 'package:recycling_app/presentation/shared/txt.dart';




class order_page extends StatelessWidget {
  order_page(
      {required this.name,
      required this.size,
      required this.status,
      required this.image});
  String name;
  String size;
  String status;
  String image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff196D49),
        appBar: AppBar(
          backgroundColor: Color(0xff196D49),
          leading: Stack(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.notifications,
                    size: 35,
                    color: Color.fromARGB(237, 255, 255, 255),
                  )),
              Positioned(
                top: 2,
                left: 28,
                child: Container(
                    child: Text("1",
                        style: TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
                    padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(211, 164, 255, 193),
                        shape: BoxShape.circle)),
              ),
            ],
          ),
          actions: [
            Text(
              "Follow Order  ",
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Boxicons.bxs_package,
                  size: 35, color: Color.fromARGB(237, 255, 255, 255)),
            )
          ],
        ),
        body: Expanded(
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              button_style(Data: "Current order"),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  margin: EdgeInsets.only(top: 20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25))),
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 160,
                        child: Card(
                          elevation: 5,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          name,
                                          style: TextStyle(
                                              fontSize: 22,
                                              color: Color(0xff1E6242),
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 50,
                                      ),
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 2),
                                        child: Text(
                                          status,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14),
                                        ),
                                        decoration: BoxDecoration(
                                            color: green_color,
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8),
                                    child: Row(
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            txt("size", green_color, 18,false),
                                            txt(size, Colors.black, 18,false)
                                          ],
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            txt("status", green_color, 18,false),
                                            txt(status, Colors.black, 18,false)
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  )
                                ],
                              ),
                              ClipRRect(
                                  borderRadius: BorderRadius.circular(25),
                                  child: Image.asset(
                                    image,
                                    width: 140,
                                  )),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  child: Icon(
                                    Icons.check,
                                    color: Colors.white,
                                    size: 24,
                                  ),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(12),
                                      border: Border.all()),
                                ),
                                SizedBox(
                                  width: 8.0,
                                ),
                                txt("check", Color.fromARGB(120, 0, 0, 0), 22,false)
                              ],
                            ),
                            Container(
                              height: 25,
                              margin: EdgeInsets.only(left: 11),
                              decoration: BoxDecoration(
                                  border: Border(
                                      left: BorderSide(
                                          color: Colors.black,
                                          width: 1,
                                          style: BorderStyle.solid))),
                            ),
                            Row(
                              children: [
                                Container(
                                  child: Icon(
                                    Icons.check,
                                    color: Colors.white,
                                    size: 24,
                                  ),
                                  decoration: BoxDecoration(
                                      color: green_color,
                                      border: Border.all(),
                                      borderRadius: BorderRadius.circular(12)),
                                ),
                                SizedBox(
                                  width: 8.0,
                                ),
                                txt(status == "sell" ? "accepted" : "received",
                                    Color.fromARGB(202, 0, 0, 0), 22,false)
                              ],
                            ),
                            Container(
                              height: 25,
                              margin: EdgeInsets.only(left: 11),
                              decoration: BoxDecoration(
                                  border: Border(
                                      left: BorderSide(
                                          color: Colors.black,
                                          width: 1,
                                          style: BorderStyle.solid))),
                            ),
                            Row(
                              children: [
                                Container(
                                  child: Icon(
                                    Icons.check,
                                    color: Colors.white,
                                    size: 24,
                                  ),
                                  decoration: BoxDecoration(
                                      color: green_color,
                                      border: Border.all(),
                                      borderRadius: BorderRadius.circular(12)),
                                ),
                                SizedBox(
                                  width: 8.0,
                                ),
                                txt(status == "sell" ? "accepted" : "received",
                                    Color.fromARGB(202, 0, 0, 0), 22,false)
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
