import 'package:flutter/material.dart';
import 'package:recycling_app/presentation/shared/txt.dart';
import 'package:recycling_app/presentation/screens/navigation_page.dart';
import 'package:recycling_app/presentation/shared/colour_constant.dart';
import 'package:recycling_app/presentation/shared/elvated_button.dart';

class auction_page extends StatefulWidget {
  final String? item1;
  final String? item2;
  final String? item3;
  final String? item4;

  auction_page(
      {required this.item1,
      required this.item2,
      required this.item3,
      required this.item4});

  @override
  _auction_pageState createState() => _auction_pageState();
}

class _auction_pageState extends State<auction_page> {
  int text = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(15.0),
        child: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) {
                return navigation_page();
              }),
            );
          },
          child: Icon(
            Icons.home,
            color: Colors.white,
            size: 30,
          ),
          backgroundColor: green_color,
          elevation: 18,
        ),
      ),
      backgroundColor: green_color,
      appBar: AppBar(
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            txt(
              "Auctions",
              Colors.grey.shade100,
              30,false
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.gavel_rounded,
              size: 40,
              color: Colors.white,
            ),
          )
        ],
        backgroundColor: green_color,
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 80),
              child: button_style(Data: 'finish after 2h:43m'),
            ),
            SizedBox(
              height: 30,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                height: 650,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25))),
                child: Column(
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 30, right: 10, left: 10, bottom: 20),
                        child: Container(
                          height: 200,
                          width: 350,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey.shade300,
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage(widget.item4!),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        txt('Crochet Paper', Color(0xff497126), 30,false),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            txt(
                              'size : ',
                              Color(0xff497126),
                              24,false
                            ),
                            txt(
                              widget.item1!,
                              Colors.grey.shade500,
                              15,false
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Row(
                          children: [
                            txt(
                              'status : ',
                              Color(0xff497126),
                              24,false
                            ),
                            txt(
                              widget.item2!,
                              Colors.grey.shade500,
                              15,false
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        txt(
                          'Auction Went Up :',
                          Colors.black,
                          25,false
                        ),
                        txt(widget.item3!, Color(0xff497126), 30,false),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Ink(
                          decoration: ShapeDecoration(
                            color: Color(0xff497126),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.horizontal(
                                left: Radius.circular(15),
                                right: Radius.circular(15),
                              ),
                              side: const BorderSide(
                                color: green_color,
                                width: 2,
                              ),
                            ),
                          ),
                          child: IconButton(
                            icon: const Icon(Icons.add_circle_outlined),
                            color: green_color,
                            iconSize: 30,
                            onPressed: () {
                              setState(() {
                                text += 100;
                              });
                            },
                          ),
                        ),
                        Text(
                          text < 0 ? "0" : text.toString(),
                          style: TextStyle(
                              color: Color(0xff497126),
                              fontSize: 40,
                              fontWeight: FontWeight.bold),
                        ),
                        Ink(
                          decoration: ShapeDecoration(
                            color: Color(0xff497126),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.horizontal(
                                left: Radius.circular(15),
                                right: Radius.circular(15),
                              ),
                              side: const BorderSide(
                                color: green_color,
                                width: 2,
                              ),
                            ),
                          ),
                          child: IconButton(
                            icon: const Icon(Icons.remove_circle),
                            color: green_color,
                            iconSize: 30,
                            onPressed: () {
                              setState(() {
                                text -= 100;
                              });
                            },
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              text = 0;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: green_color,
                            padding: EdgeInsets.all(4),
                          ),
                          child: txt(
                            'Retreat',
                            Colors.white,
                            25,false
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
