import 'package:flutter/material.dart';
import 'package:recycling_app/data/models/order.dart';
import 'package:recycling_app/presentation/screens/order_page.dart';
import 'package:recycling_app/presentation/shared/card_order.dart';

import 'package:flutter_boxicons/flutter_boxicons.dart';
import 'package:recycling_app/presentation/shared/elvated_button.dart';

class Follow_order extends StatelessWidget {
  Follow_order({super.key});
  List<order_model> order_details = [
    order_model(
        itemName: "paper",
        condition: "check",
        quantity: "200 tons",
        status: "sell",
        orderPrice: "100000 bounds",
        image: "assets/images/paper.png"),
    order_model(
        itemName: "iron wire",
        condition: "accepted",
        quantity: "1500 tons",
        status: "buy",
        orderPrice: "15200 bounds",
        image: "assets/images/iron wire.jpeg")
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
            "Your Order  ",
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Boxicons.bxs_package,
                size: 35, color: Color.fromARGB(237, 255, 255, 255)),
          )
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
                  Data: "All Order",
                ),
                button_style(
                  Data: "Current Order",
                ),
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
                    itemCount: order_details.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card_Order(
                            quantity: order_details[index].quantity,
                            yourPrice: order_details[index].orderPrice,
                            status: order_details[index].status,
                            itemName: order_details[index].itemName,
                            image: order_details[index].image,
                            ontap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return order_page(
                                  image: order_details[index].image,
                                  name: order_details[index].itemName,
                                  size: order_details[index].quantity,
                                  status: order_details[index].status,
                                );
                              }));
                            },
                            condition: order_details[index].condition),
                      );
                    }))
          ],
        ),
      ),
    );
  }
}
