import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recycling_app/presentation/shared/txt.dart';

import '../../presentation/shared/colour_constant.dart';

class commonQuestion extends StatefulWidget {
  @override
  _commonQuestionState createState() => _commonQuestionState();
}

class question_model {
  bool b;
  String Question_name;
  String Question_solution;
  question_model(
      {required this.Question_name,
      required this.Question_solution,
      required this.b});
}

class _commonQuestionState extends State<commonQuestion> {
  List<question_model> questions = [
    question_model(
        Question_name: "who we are ?",
        Question_solution:
            "Our app aims to promote recycling and sustainability by providing a platform that connects recyclers with potential buyers or bidders.The auction feature allows users to list recyclable items they have for sale or auction. Other users can then place bids on these items, creating a competitive bidding environment. The highest bidder at the end of the auction period wins the item and can proceed with the purchase or collection.Our app also provides features such as User Profiles: Users can create profiles and manage their listings, bids, and transactions.'Search and Filtering: Users can search for specific recyclable items or filter listings based on their preferences, such as location or item category.Notifications: Users receive notifications about new listings, bids, and auction updates to stay informed.Secure Transactions: The app facilitates secure transactions between buyers and sellers, ensuring a safe and trustworthy environment for all parties involved.Ratings and Reviews: Users can rate and leave feedback on transactions, promoting transparency and accountability within the community",
        b: false),
    question_model(
        Question_name:
            "How does the auction feature work in the recycling app?",
        Question_solution:
            'The auction feature allows users to list recyclable items they have for sale or auction. Other users can bid on these items, and the highest bidder at the end of the auction period wins the item.',
        b: false),
    question_model(
        Question_name: "How long does an auction typically last?",
        Question_solution:
            "The length of an auction can vary depending on the sellers preference. It can range from a few hours to several days, allowing enough time for interested bidders to place their bids.",
        b: false),
    question_model(
        Question_name: "Can I retract or modify my bid during an auction?",
        Question_solution:
            "Once a bid is placed, it is generally not possible to retract or modify it. Bids are considered binding, and users should carefully consider their bid amount before placing it",
        b: false),
    question_model(
        Question_name: " What happens if I win an auction?",
        Question_solution:
            "If you are the highest bidder at the end of the auction, you will be notified as the winner. You can then proceed with the purchase or collection of the item, following the apps guidelines and coordinating with the seller",
        b: false),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: green_color,
      appBar: AppBar(
        backgroundColor: green_color,
        title: txt('Hello to common question', Colors.white, 15, false),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: green_color,
        child: Container(
            margin: EdgeInsets.only(top: 60),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50),
                topRight: Radius.circular(50),
              ),
            ),
            child: ListView.builder(
              
                padding: const EdgeInsets.all(8),
                itemCount: questions.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.all(10),                          width: double.infinity,
                          alignment: Alignment.centerLeft,
                          //color: Colors.grey.shade300,
                          child: Column(
                            children: [
                              TextButton.icon(
                                onPressed: () {
                                  setState(() {
                                    questions[index].b = !questions[index].b;
                                  });
                                },
                                icon: Icon(!questions[index].b?Icons.arrow_forward_ios:Icons.keyboard_arrow_down,size: 25,
                                    color: green_color),
                                label: txt(questions[index].Question_name,
                                    green_color, 20, false),
                              ),
                            ],
                          )),
                      if (questions[index].b)
                        Container(
                          margin: EdgeInsets.only(top: 20, bottom: 20),
                          width: double.infinity,
                          color: Colors.grey.shade100,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                txt(questions[index].Question_solution,
                                    green_color, 15, false),
                              ],
                            ),
                          ),
                        ),
                    ],
                  );
                })),
      ),
    );
  }
}
