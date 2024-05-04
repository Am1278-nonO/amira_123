

import 'package:flutter/material.dart';
import 'package:recycling_app/presentation/shared/colour_constant.dart';

class Card_Order extends StatefulWidget {
  Card_Order( 
      {required this.quantity,required this.yourPrice,required this.status,required this.itemName, required this.image, required this.ontap,required this.condition});
  String itemName;
  String condition;
  String status;
  String yourPrice;
  String image;
  String quantity;
  VoidCallback ontap;

  @override
  State<Card_Order> createState() => _Card_OrderState();
}

class _Card_OrderState extends State<Card_Order> {
  

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.ontap,
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
                    widget.itemName,
                    style: TextStyle(
                        fontSize: 22,
                        color: Color(0xff1E6242),
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                  child: Text(
                    widget.status,
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                  decoration: BoxDecoration(
                      color: green_color,
                      borderRadius: BorderRadius.circular(15)),
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
                              size: 16,
                            ),
                            decoration: BoxDecoration(
                                color: green_color,
                                borderRadius: BorderRadius.circular(12)),
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          Text("check")
                        ],
                      ),
                      Container(
                        height: 10,
                        margin: EdgeInsets.only(left: 7),
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
                              size: 16,
                            ),
                            decoration: BoxDecoration(
                                color: green_color,
                                borderRadius: BorderRadius.circular(12)),
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          Text(widget.status =="sell"?"accepted":"received")
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,)
                
                
              ],
            ),
            ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image.asset(
                  widget.image,
                  width: 140,
                )),
                
          ],
        ),
      ),
    
    );
  }
}
