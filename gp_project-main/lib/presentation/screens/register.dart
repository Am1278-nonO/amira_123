// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recycling_app/data/auth/authentication.dart';

import 'package:recycling_app/presentation/screens/login.dart';
import 'package:recycling_app/presentation/shared/Input_decoration.dart';
import 'package:recycling_app/presentation/shared/colour_constant.dart';
import 'package:recycling_app/presentation/shared/logo.dart';

class register_page extends StatefulWidget {
  register_page({super.key});

  @override
  State<register_page> createState() => _register_pageState();
}

class _register_pageState extends State<register_page> {
  final _formKey = GlobalKey<FormState>();
  bool isVisable = false;
  bool isLoading = false;
  final F_nameController = TextEditingController();
  final L_nameController = TextEditingController();
  final username_Controller = TextEditingController();
  final EmailController = TextEditingController();
  final PasswordController = TextEditingController();
  final AgeController = TextEditingController();
  final BirthdayController = TextEditingController();
  final P_numberController = TextEditingController();
  final AddressController = TextEditingController();
  String f_name = "";
  String L_name = "";
  String user_name = "";
  String Email = "";
  String Password = "";
  String Age = "";
  String address = "";
  String phone_number = "";
  String DOB = "";

  List<String> _genderOptions = ['Male', 'Female'];
  String? gender_selection;

  onclickregister() async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        isLoading = true;
      });
      await auth().signup(userdata: {
        "firstName": f_name,
        "lastName": L_name,
        "userName": user_name,
        "email": Email,
        "Age": int.tryParse(Age),
        "address": address,
        "password": Password,
        "rePassword": Password,
        "DOB": DOB,
        "phone": phone_number,
        "Gender": gender_selection
      });
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    F_nameController.dispose();
    L_nameController.dispose();
    EmailController.dispose();
    username_Controller.dispose();
    AgeController.dispose();
    BirthdayController.dispose();
    PasswordController.dispose();
    P_numberController.dispose();
    AddressController.dispose();
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
                  height: 90,
                ),
                logo(),
                SizedBox(
                  height: 40,
                ),
                TextFormField(
                    validator: (value) {
                      return value!.isEmpty ? "Enter First name " : null;
                    },
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    onChanged: (value) {
                      f_name = value;
                    },
                    controller: F_nameController,
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    decoration: decorationTextfield.copyWith(
                        hintText: "First name : ",
                        suffixIcon: IconButton(
                            onPressed: () {}, icon: Icon(Icons.person)))),
                SizedBox(
                  height: 12,
                ),
                TextFormField(
                    validator: (value) {
                      return value!.isEmpty ? "Enter Last name " : null;
                    },
                    onChanged: (value) {
                      L_name = value;
                    },
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    controller: L_nameController,
                    decoration: decorationTextfield.copyWith(
                        hintText: "Last name : ",
                        suffixIcon: IconButton(
                            onPressed: () {}, icon: Icon(Icons.person)))),
                SizedBox(
                  height: 12,
                ),
                TextFormField(
                    validator: (value) {
                      return value!.isEmpty ? "Enter username " : null;
                    },
                    onChanged: (value) {
                      user_name = value;
                    },
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    controller: username_Controller,
                    decoration: decorationTextfield.copyWith(
                        hintText: "Username : ",
                        suffixIcon: IconButton(
                            onPressed: () {}, icon: Icon(Icons.person)))),
                SizedBox(
                  height: 12,
                ),
                TextFormField(
                    validator: (value) {
                      return value!.isEmpty ? "Enter Your email " : null;
                    },
                    onChanged: (value) {
                      Email = value;
                    },
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    controller: EmailController,
                    decoration: decorationTextfield.copyWith(
                        hintText: "Your Email : ",
                        suffixIcon: IconButton(
                            onPressed: () {}, icon: Icon(Icons.email)))),
                SizedBox(
                  height: 12,
                ),
                TextFormField(
                    validator: (value) {
                      return value!.length < 8
                          ? "Enter at least 8 characters"
                          : null;
                    },
                    onChanged: (value) {
                      Password = value;
                    },
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    controller: PasswordController,
                    keyboardType: TextInputType.visiblePassword,
                    textInputAction: TextInputAction.next,
                    obscureText: isVisable ? false : true,
                    decoration: decorationTextfield.copyWith(
                        hintText: "Password : ",
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                isVisable = !isVisable;
                              });
                            },
                            icon: isVisable
                                ? Icon(Icons.visibility)
                                : Icon(Icons.visibility_off)))),
                SizedBox(
                  height: 12,
                ),
                TextFormField(
                    validator: (value) {
                      return value!.isEmpty ? "Enter your phone number " : null;
                    },
                    onChanged: (value) {
                      phone_number = value;
                    },
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    textInputAction: TextInputAction.next,
                    controller: P_numberController,
                    decoration: decorationTextfield.copyWith(
                        hintText: "Phone number : ",
                        suffixIcon: Icon(Icons.phone_outlined))),
                SizedBox(
                  height: 12,
                ),
                TextFormField(
                    validator: (value) {
                      return value!.isEmpty ? "Enter your Age " : null;
                    },
                    onChanged: (value) {
                      Age = value;
                    },
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    textInputAction: TextInputAction.next,
                    controller: AgeController,
                    keyboardType: TextInputType.number,
                    decoration: decorationTextfield.copyWith(
                        hintText: "Age : ",
                        suffixIcon: Icon(Icons.date_range))),
                SizedBox(
                  height: 12,
                ),
                TextFormField(
                    validator: (value) {
                      return value!.isEmpty ? "Enter your Birthday " : null;
                    },
                    onChanged: (value) {
                      DOB = value;
                    },
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    textInputAction: TextInputAction.next,
                    controller: BirthdayController,
                    decoration: decorationTextfield.copyWith(
                        hintText: "Birthday : ",
                        suffixIcon: Icon(Icons.date_range))),
                SizedBox(
                  height: 12,
                ),
                TextFormField(
                    validator: (value) {
                      return value!.isEmpty ? "Enter Your address " : null;
                    },
                    onChanged: (value) {
                      address = value;
                    },
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    textInputAction: TextInputAction.done,
                    decoration: decorationTextfield.copyWith(
                        hintText: "Your address : ",
                        suffixIcon: Icon(Icons.home))),
                SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Text(
                      "gender",
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    DropdownButton(
                      value: gender_selection,
                      onChanged: (value) {
                        setState(() {
                          gender_selection = value;
                          print(gender_selection);
                        });
                      },
                      items: _genderOptions.map((String location) {
                        return new DropdownMenuItem<String>(
                          child: new Text(location),
                          value: location,
                        );
                      }).toList(),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Row(
                    children: [
                      Text(" You have an account ",
                          style: TextStyle(color: logo_color, fontSize: 16)),
                      GestureDetector(
                        child: Text(
                          "Sign in",
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Color.fromARGB(255, 53, 90, 76),
                              fontSize: 16),
                        ),
                        onTap: () {
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context) {
                            return login_page();
                          }));
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(15, 0, 10, 0),
                      child: SvgPicture.asset(
                        "assets/icons/facebook.svg",
                        color: Colors.white,
                        height: 30,
                      ),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(192, 5, 11, 182),
                          shape: BoxShape.circle),
                      height: 50,
                      width: 50,
                      padding: EdgeInsets.all(5),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 50),
                      child: SvgPicture.asset(
                        "assets/icons/google.svg",
                        // color: Colors.blue,
                        height: 30,
                      ),
                      decoration: BoxDecoration(shape: BoxShape.circle),
                      height: 70,
                      width: 70,
                      padding: EdgeInsets.all(5),
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        await onclickregister();
                      },
                      child: isLoading
                          ? CircularProgressIndicator(
                              color: Colors.white,
                            )
                          : Text(
                              "Register",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Color(0xff0E7442)),
                          padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(
                                  horizontal: 40, vertical: 15))),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
