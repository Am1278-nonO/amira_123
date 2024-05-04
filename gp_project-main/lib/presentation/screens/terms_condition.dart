import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:recycling_app/presentation/shared/buildSliverToolBox.dart';




class termsAndCondition extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: Colors.white,
     body: CustomScrollView(
       slivers: [
         SliverAppBar(
           flexibleSpace: Image.asset('assets/images/terms@condition.png'),
           pinned: false,

           expandedHeight: 200,
         backgroundColor: Colors.white,
         ),
         buildSliverToolBox('Please read these Terms and Conditions ("Agreement") carefully before using our recycling app with auction feature ("App"). This Agreement sets forth the legally binding terms and conditions for your use of the App',
             180),

         buildSliverToolBox('Acceptance of Terms'
             ' By accessing or using the App, you agree to be bound by this Agreement and all applicable laws and regulations. If you do not agree with any of the terms and conditions stated in this Agreement, you are prohibited from using or accessing the App.',
             200),
         buildSliverToolBox('Use of the App'
    '(a) Eligibility: You must be at least 18 years old to use the App. By using the App, you represent and warrant that'
             ' you are 18 years of age or older.', 130),

buildSliverToolBox('Account Registration: To access certain features of the App, you may be required to create an account. You agree to provide accurate, complete, and up-to-date information during the registration process. You are responsible for maintaining the confidentiality of your account credentials and for all activities that occur under your account',
    250),

buildSliverToolBox('Bidding: Bids placed on the App are binding. If you are the highest bidder at the end of the auction, you are obligated to complete the purchase of the item at the agreed-upon price.',
    150),
buildSliverToolBox('Seller Obligations: Sellers must accurately describe the items they list for auction. They are obligated to complete the transaction with the winning bidder if the reserve price is met',
    150),







       ],
     ),
   );


  }
}