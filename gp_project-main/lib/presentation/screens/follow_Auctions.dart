// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:recycling_app/data/models/auction.dart';

import 'package:recycling_app/presentation/screens/auction_page.dart';
import 'package:recycling_app/presentation/shared/card_Auction.dart';
import 'package:recycling_app/presentation/shared/elvated_button.dart';

class follow_Auction extends StatefulWidget {
  @override
  State<follow_Auction> createState() => _follow_AuctionState();
}

class _follow_AuctionState extends State<follow_Auction> {
  List<auction_model> items = [
    auction_model(
        StartAuction: "15.000LE",
        itemName: "paper",
        quantity: 1450.3,
        status: "false",
        image: "assets/images/paper.png",
        time: "00:00",
        yourPrice: "15.500LE"),
    auction_model(
        StartAuction: "55.000LE",
        itemName: "zan wood",
        quantity: 1550.3,
        image: "assets/images/zan wood.jpeg",
        time: "00:00",
        status: "true",
        yourPrice: "56.500LE"),
    auction_model(
        StartAuction: "36.000LE",
        time: "00:00",
        quantity: 450.3,
        image: "assets/images/iron wire.jpeg",
        itemName: "Iron wire",
        status: "false",
        yourPrice: "37.500LE"),
    auction_model(
        StartAuction: "120.000LE",
        time: "00:00",
        quantity: 450.3,
        itemName: "copper",
        image: "assets/images/cooper.jpeg",
        status: "false",
        yourPrice: "122.500LE"),
  ];

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
            "Your Auctions  ",
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
          Icon(Icons.gavel_rounded,
              size: 35, color: Color.fromARGB(237, 255, 255, 255))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                button_style(
                  Data: "All",
                ),
                button_style(Data: "Next"),
                button_style(Data: "Recent"),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              height: 650,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25))),
              child: ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (BuildContext context, int index) {
                    return items[index].quantity > 1000
                        ? Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Card_Auction(
                                quantity: items[index].quantity,
                                itemName: items[index].itemName,
                                StartAuction: items[index].StartAuction,
                                yourPrice: items[index].yourPrice,
                                image: items[index].image,
                                ontap: () {
                                  setState(() {
                                    print("x");
                                    Navigator.of(context).push(
                                        MaterialPageRoute(builder: (context) {
                                      return auction_page(
                                          item1: items[index].quantity.toString(),
                                          item2: items[index].status,
                                          item3: items[index].yourPrice,
                                          item4: items[index].image);
                                    }));
                                  });
                                }),
                          )
                        : SizedBox.shrink();
                  }),
            )
          ],
        ),
      ),
    );
  }
}
