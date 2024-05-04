import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:recycling_app/presentation/screens/terms_condition.dart';
import 'package:recycling_app/presentation/shared/colour_constant.dart';
import 'package:recycling_app/presentation/shared/returned_data_from_contact_us.dart';
import 'package:recycling_app/presentation/shared/txt.dart';

class contactUs extends StatefulWidget {
  @override
  State<contactUs> createState() => _contactUsState();
}

class _contactUsState extends State<contactUs> {
  var _name = TextEditingController();
  var _email = TextEditingController();
  var _message = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: green_color,
      appBar: AppBar(
        actions: [
          txt('Contact us', Colors.white, 20, false),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Icon(
              Icons.headset_mic_rounded,
              size: 35,
              color: Colors.white,
            ),
          ),
        ],
     
        backgroundColor: green_color,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: green_color,
        child: Container(
          margin: EdgeInsets.only(top: 30),
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 40),
          height: 650,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50),
              topRight: Radius.circular(50),
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                txt('Contact us ', green_color, 20, false),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    onFieldSubmitted: (value) => ($x1) {
                      print($x1);
                    },
                    keyboardType: TextInputType.name,
                    controller: _name,
                    decoration: InputDecoration(
                      filled: true,
                      hintText: 'Name',
                      hintStyle: TextStyle(
                        color: green_color,
                      ),
                      border: InputBorder.none,
                      fillColor: Colors.grey.shade200,
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    onFieldSubmitted: (value) => (x2) {
                      print('$x2');
                    },
                    keyboardType: TextInputType.emailAddress,
                    controller: _email,
                    decoration: InputDecoration(
                      filled: true,
                      hintText: 'Email',
                      hintStyle: TextStyle(
                        color: green_color,
                      ),
                      border: InputBorder.none,
                      fillColor: Colors.grey.shade200,
                    ),
                  ),
                ),

                SizedBox(height: 10,),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    onFieldSubmitted: (value) => (x3) {
                      print(x3);
                    },
                    keyboardType: TextInputType.text,
                    controller: _message,
                    maxLines: 8,
                    decoration: InputDecoration(
                      filled: true,
                      hintText: 'Message',
                      hintStyle: TextStyle(
                        color: green_color,
                      ),
                      fillColor: Colors.grey.shade200,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                MaterialButton(
                    color: green_color,
                    child: txt('send', Colors.white, 20, false),
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (v) {
                        return returnDataContactUs(
                          name: _name.text,
                          email: _email.text,
                          message: _message.text,
                        );
                      }));
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
