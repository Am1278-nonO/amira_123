// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:recycling_app/data/auth/authentication.dart';

import 'package:recycling_app/presentation/screens/forget_Password.dart';
import 'package:recycling_app/presentation/screens/navigation_page.dart';
import 'package:recycling_app/presentation/screens/register.dart';
import 'package:recycling_app/presentation/shared/Input_decoration.dart';
import 'package:recycling_app/presentation/shared/colour_constant.dart';
import 'package:recycling_app/presentation/shared/logo.dart';

class login_page extends StatefulWidget {
  login_page({super.key});

  @override
  State<login_page> createState() => _login_pageState();
}

class _login_pageState extends State<login_page> {
  final _formKey = GlobalKey<FormState>();
  bool isVisable = false;
  bool isloading = false;
  final EmailController = TextEditingController();
  final PasswordController = TextEditingController();
  String Email = "";
  String password = "";

  onclickLogin() async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        isloading = true;
      });
      await auth()
          .signin(userdata: {"emailOrMobile": Email, "password": password});
      setState(() {
        isloading = false;
      });
    }
  }

  @override
  void dispose() {
    EmailController.dispose();
    PasswordController.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                ),
                logo(),
                SizedBox(
                  height: 140,
                ),
                Container(
                  margin: EdgeInsets.all(8),
                  child: TextFormField(
                      onChanged: (value) {
                        Email = value;
                      },
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.next,
                      obscureText: false,
                      decoration: decorationTextfield.copyWith(
                          hintText: "Enter Email : ",
                          suffixIcon: IconButton(
                              onPressed: () {}, icon: Icon(Icons.email)))),
                ),
                Container(
                  margin: EdgeInsets.all(8),
                  child: TextFormField(
                      onChanged: (value) {
                        password = value;
                      },
                      keyboardType: TextInputType.visiblePassword,
                      textInputAction: TextInputAction.done,
                      obscureText: isVisable ? false : true,
                      decoration: decorationTextfield.copyWith(
                          hintText: "Enter Password : ",
                          suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  isVisable = !isVisable;
                                });
                              },
                              icon: isVisable
                                  ? Icon(Icons.visibility)
                                  : Icon(Icons.visibility_off)))),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) {
                          return forgetPassword();
                        }));
                      },
                      child: Text(
                        "forget password",
                        style: TextStyle(
                            color: Color(0xff366553),
                            decoration: TextDecoration.underline,
                            fontSize: 16),
                      ),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        await onclickLogin();
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Color(0xff0E7442)),
                          padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(
                                  horizontal: 50, vertical: 15))),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Row(
                    children: [
                      Text(" Don't have an account ",
                          style: TextStyle(color: logo_color, fontSize: 16)),
                      GestureDetector(
                        child: Text(
                          "register",
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Color(0xff366553),
                              fontSize: 16),
                        ),
                        onTap: () {
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context) {
                            return register_page();
                          }));
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
