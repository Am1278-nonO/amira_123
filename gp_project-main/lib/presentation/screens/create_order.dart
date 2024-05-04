import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:recycling_app/presentation/shared/Input_decoration.dart';
import 'package:recycling_app/presentation/shared/colour_constant.dart';
import 'package:recycling_app/presentation/shared/drawer.dart';
import 'package:recycling_app/presentation/shared/textField.dart';
import 'package:recycling_app/presentation/shared/txt.dart';
class create_order extends StatefulWidget {
  create_order({required this.image, required this.price, required this.name});
  String image;
  String price;
  String name;
  @override
  State<create_order> createState() => _create_orderState();
}
class _create_orderState extends State<create_order> {
  bool showCondition = false;
  bool _isChecked0 =false;
  bool _isChecked1 =false;
  bool _isChecked2 =false;
  final _formKey = GlobalKey<FormState>();
  final username_Controller = TextEditingController();
  final quntity_Controller = TextEditingController();
  @override
  void dispose() {
    username_Controller.dispose();
    quntity_Controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){},child:Icon(Icons.send,color: Colors.white,),backgroundColor: green_color,),
      backgroundColor: green_color,
      drawerEnableOpenDragGesture: true,
      drawer: drawer(),
      appBar: AppBar(
        title: Text(
          "create order",
          style: TextStyle(
              color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications_on,
              color: Colors.yellow[900],
              size: 30,
            ),
          )
        ],
        backgroundColor: green_color,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Expanded(
                child: Container(
              width: double.infinity,
              height: 640,
              margin: EdgeInsets.only(top: 18),
              padding: EdgeInsets.fromLTRB(10, 15, 10, 3),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25))),
              child: Form(
                key: _formKey,
                child: ListView(
                  children: [
                    Center(
                      child: CircleAvatar(
                        backgroundImage: AssetImage(
                          widget.image,
                        ),
                        radius: 100,
                      ),
                    ),
                    Center(child: txt(widget.name, green_color, 22, true)),
                    Center(
                        child: txt("price :${widget.price} for 1kg",
                            green_color, 22, true)),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: EdgeInsets.all(3),
                      child: TextField(
                          keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.next,
                          controller: username_Controller,
                          obscureText: false,
                          decoration: decorationTextfield.copyWith(
                              label: Text("order creator:"),
                              suffixIcon: Icon(Icons.person_3_outlined))),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: EdgeInsets.all(3),
                      child: TextField(
                          keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.next,
                          controller: quntity_Controller,
                          obscureText: false,
                          decoration: decorationTextfield.copyWith(
                              label: Text("order quntity :"),
                              suffixIcon: Icon(Icons.line_weight))),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: EdgeInsets.all(3),
                      child: TextField(
                          keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.next,
                          controller: quntity_Controller,
                          obscureText: false,
                          decoration: decorationTextfield.copyWith(
                              label: Text("destination address :"),
                              suffixIcon: Icon(Icons.home))),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: txt("condition  :", Colors.black, 18, false),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 88.0),
                      child: Column(
                        children: [
                          CheckboxListTile(
                            title: const Text('Used-like new'),
                            value: _isChecked0,
                            onChanged: (bool? newValue) {
                              setState(() {
                                _isChecked0 = newValue ?? false;
                              });
                            },
                            activeColor: green_color,
                            controlAffinity: ListTileControlAffinity.leading,
                          ),
                          CheckboxListTile(
                            title: const Text('Used-good'),
                            value: _isChecked1,
                            onChanged: (bool? newValue) {
                              setState(() {
                                _isChecked1 = newValue ?? false;
                              });
                            },
                            activeColor: green_color,
                            controlAffinity: ListTileControlAffinity.leading,
                          ),
                          CheckboxListTile(
                            title: const Text('Used-fair'),
                            value: _isChecked2,
                            onChanged: (bool? newValue) {
                              setState(() {
                                _isChecked2 = newValue ?? false;
                              });
                            },
                            activeColor: green_color,
                            controlAffinity: ListTileControlAffinity.leading,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 25, horizontal: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          txt("upload image :", Colors.black, 18, false),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              height: 100,
                              width: 100,
                              child: Icon(
                                Icons.add_a_photo,
                                size: 40,
                              ),
                              margin: EdgeInsets.symmetric(horizontal: 50),
                              decoration: BoxDecoration(
                                  border: Border.all(),
                                  borderRadius: BorderRadius.circular(15)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )),
          ],
        ),
      ),
    );
  }
}
