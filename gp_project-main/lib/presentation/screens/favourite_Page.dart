import 'package:recycling_app/data/models/favourite_item.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:recycling_app/presentation/screens/payment.dart';
import 'package:recycling_app/presentation/shared/colour_constant.dart';
import 'package:recycling_app/presentation/shared/txt.dart';
import 'package:url_launcher/url_launcher.dart';

class favouritePage extends StatefulWidget {
  List<favouriteItem> favouriteItems = [];
  favouritePage({required this.favouriteItems});
  @override
  State<favouritePage> createState() => _favouritePageState();
}

class _favouritePageState extends State<favouritePage> {
  List<favouriteItem> favoriteItems = [
    favouriteItem(
        name: 'Razan wood',
        description: '18.000 LE',
        image: 'assets/assetGP/razanwood.jpg'),
    favouriteItem(
        name: 'iron',
        description: '25.000 LE',
        image: 'assets/assetGP/iron.jfif'),
    favouriteItem(
        name: 'Plastic',
        description: '18.000 LE',
        image: 'assets/assetGP/plastec.jfif'),
  ];
  void _makePhoneCall(String phoneNumber) async {
    String url = 'tel:$phoneNumber';

    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: green_color,
        actions: [
          txt("Your Favourite", Colors.white, 22,false),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.favorite,
              color: Colors.white,
              size: 30,
            ),
          )
        ],
      ),
      body: ListView.builder(
        itemCount: favoriteItems.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 246, 239, 239),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 100,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: AssetImage(
                              favoriteItems[index].image,
                            ))),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Column(
                        children: [
                          txt(favoriteItems[index].name, green_color, 15,false),
                          SizedBox(
                            height: 5,
                          ),
                          txt(favoriteItems[index].description, green_color,
                              15,false),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    IconButton(
                      icon: Icon(Icons.delete, color: green_color, size: 30),
                      onPressed: () {
                        setState(() {
                          favoriteItems.removeAt(index);
                        });
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (x) {
                            return payment();
                          }),
                        );
                      },
                      child: txt('Make Bid', green_color, 15,false),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              actions: [
                                MaterialButton(
                                  onPressed: () {
                                    _makePhoneCall('01550386172');
                                  },
                                  child: txt('Call', green_color, 15,false),
                                ),
                                MaterialButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: txt('Cancel', green_color, 15,false),
                                ),
                              ],
                              backgroundColor: Colors.grey.shade50,
                              titlePadding: EdgeInsets.all(10),
                              contentPadding: EdgeInsets.all(10),
                              title: txt('To Buy Product', Colors.grey, 15,false),
                              content: txt('Please call (+2001550386172)',
                                  green_color, 15,false),
                            );
                          },
                        );
                      },
                      child: txt('Buy Now', green_color, 15,false),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
