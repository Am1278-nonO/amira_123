
import 'package:flutter/material.dart';

import 'package:recycling_app/presentation/screens/navigation_page.dart';
import 'package:recycling_app/presentation/shared/colour_constant.dart';
import 'package:recycling_app/presentation/shared/txt.dart';

class returnDataContactUs extends StatelessWidget{
  var name;
  var email;
  var message;
  @override
  returnDataContactUs({required this.name,required this.email,required this.message});
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body:  Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
          
                  txt('your name is :${name}', Colors.green, 25,false),
                  txt('your email is ${email}', Colors.green, 25,false),
                  txt('your mssage is ${message}', Colors.green, 25,false),
          SizedBox(height: 30,),
              MaterialButton(
                  color: green_color,
                  height: 30,
                  child: txt('return home', Colors.white, 20,false),
                  onPressed: (){
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder:(x){
                        return navigation_page();
                      })
                    );
                  }
              ),
            ],
          ),
        ),
      ),
    );
  }

}