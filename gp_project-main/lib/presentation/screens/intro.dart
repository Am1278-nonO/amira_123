// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:recycling_app/presentation/screens/login.dart';
import 'package:recycling_app/presentation/screens/register.dart';

import 'package:recycling_app/presentation/shared/logo.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Into_page extends StatefulWidget {
  Into_page({super.key});

  @override
  State<Into_page> createState() => _Into_pageState();
}

class _Into_pageState extends State<Into_page> {
  final controller = PageController(viewportFraction: 0.8, keepPage: true);
  final List<String> pages = [
    "n today's world, the need for sustainable practices and environmental consciousness has become more crucial than ever. Recycling plays a significant role in reducing waste, conserving resources, and minimizing our ecological footprint. ",
    "To make recycling more accessible and convenient for individuals and communities, we are proud to present our innovative recycling application.",
    "Our recycling application is designed to simplify the recycling process, empowering users to participate actively in environmental preservation. With a user-friendly interface and powerful features, our app aims to educate and engage users, making recycling a seamless part of their daily lives."
    // Add more pages as needed
  ];

  int indexx = 0;
 
  bool skip = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(top: 50),
      child: Center(
        child: Column(
          children: [
            skip == false
                ? SizedBox(
                    height: 150,
                  )
                : SizedBox(
                    height: 200,
                  ),
           
            logo(),
            SizedBox(
              height: 100,
            ),
            skip == false
                ? Column(
                    children: [
                      SizedBox(
                        height: 250,
                        child: PageView.builder(
                          controller: controller,
                          onPageChanged: (index) {
                            setState(() {
                              indexx = index;
                              if (index == 2) {
                                indexx = 2;
                              }
                            });
                          },
                          itemCount: pages.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              
                              
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10),
                                child: Text(
                                  pages[index],
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                  textAlign: TextAlign.justify,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      SizedBox(
                        height: 70,
                      ),
                      
                      SmoothPageIndicator(
                        controller: controller,
                        count: pages.length,
                        effect: const ExpandingDotsEffect(
                          dotColor: Colors.grey,
                          activeDotColor: Colors.black,
                          dotHeight: 10,
                          spacing: 4,
                          expansionFactor: 2,dotWidth: 10
                        ),
                      ),

                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 18.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  skip = true;
                                });
                              },
                              child: Container(
                                alignment: Alignment.center,
                                width: 50,
                                child: Text("Skip"),
                                decoration: BoxDecoration(
                                    color: indexx == 2
                                        ? Color(0xff599E7D)
                                        : Color.fromARGB(52, 158, 158, 158),
                                    borderRadius: BorderRadius.circular(15)),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                : Container(
                    margin: EdgeInsets.only(top: 150),
                    height: 120,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacement(context,
                                MaterialPageRoute(builder: (context) {
                              return login_page();
                            }));
                          },
                          child: Text(
                            "login",
                            style: TextStyle(
                                fontFamily: "Schyler",
                                fontSize: 30,
                                color: Colors.white),
                          ),
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                Color(0xff196D49),
                              ),
                              padding: MaterialStateProperty.all(
                                  EdgeInsets.symmetric(
                                      horizontal: 120, vertical: 5))),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacement(context,
                                MaterialPageRoute(builder: (context) {
                              return register_page();
                            }));
                          },
                          child: Text(
                            "Register",
                            style: TextStyle(
                                fontFamily: "Schyler",
                                fontSize: 30,
                                color: Color(0xff196D49)),
                          ),
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                Color(0xffE8E8E8),
                              ),
                              padding: MaterialStateProperty.all(
                                  EdgeInsets.symmetric(
                                      horizontal: 100, vertical: 5))),
                        ),
                      ],
                    ),
                  )
          ],
        ),
      ),
    ));
  }
}
