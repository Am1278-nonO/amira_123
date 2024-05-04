import 'dart:ffi';

import 'package:flutter/material.dart';

class Card_Auction extends StatelessWidget {
  Card_Auction(
      {required this.itemName,
      required this.StartAuction,
      required this.yourPrice,
      required this.image,
      required this.quantity,
      required this.ontap});
  String itemName;
  String StartAuction;
  String yourPrice;
  String image;
  double quantity;
  VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    itemName,
                    style: TextStyle(
                        fontSize: 22,
                        color: Color(0xff1E6242),
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Bidding begins :$StartAuction}",
                  style: TextStyle(fontSize: 14, color: Color(0xff1E6242)),
                ),
                Text(
                  "Your price :${yourPrice}",
                  style: TextStyle(fontSize: 14, color: Color(0xff1E6242)),
                ),
                SizedBox(
                  height: 40,
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
    );
  }
}
