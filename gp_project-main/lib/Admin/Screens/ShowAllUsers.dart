import 'package:flutter/cupertino.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:recycling_app/presentation/shared/colour_constant.dart';
import 'package:recycling_app/presentation/shared/txt.dart';
class ShowAllUsers extends StatefulWidget{
  @override
  State<ShowAllUsers> createState() => _ShowAllUsersState();
}
class _ShowAllUsersState extends State<ShowAllUsers> {
  var JasonList;
  void initState(){
    super.initState();
    getDate();
  }
  @override
  void getDate()async{
    try{
      var response=await Dio().get('https://robbikya.onrender.com/api/v1/users/allusers');
      if(response.statusCode==200){
       setState(() {
         JasonList=response.data["users"]as List;
       });
      }else{
        print(response.statusCode);
      }
      print(response);
    }
    catch(e){
      print(e);
    }
  }

  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: green_color,
        title: txt('Get All Uaers ', Colors.white, 20, true),
      ),
      body: ListView.builder(
        itemCount: JasonList==null?0:JasonList.length,
          itemBuilder:(BuildContext context ,int index){
            return Card(
              child: ListTile(
                title: Row(
                  children: [
                    txt(JasonList[index]['firstName'], Colors.grey, 20, false),
                    txt(JasonList[index]['lastName'], Colors.grey, 20, false),
                  ],
                ),
                subtitle:  txt(JasonList[index]['email'], Colors.grey, 20, false),
              ),
            );
          }
      ),
    );
  }
}

/*
import 'package:flutter/cupertino.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:recycling_app/presentation/shared/txt.dart';

class ShowAllUsers extends StatefulWidget {
  @override
  State<ShowAllUsers> createState() => _ShowAllUsersState();
}

class _ShowAllUsersState extends State<ShowAllUsers> {
  List<dynamic>? jasonList;

  @override
  void initState() {
    super.initState();
    getData();
  }

  Future<void> getData() async {
    try {
      var response = await Dio().get('YOUR_API_ENDPOINT_HERE');
      if (response.statusCode == 200) {
        setState(() {
          jasonList = response.data["users"] as List<dynamic>?;
        });
      } else {
        print(response.statusCode);
      }
      print(response.data);
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: jasonList == null
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
        itemCount: jasonList!.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: ListTile(
              title: txt(
                jasonList![index]['firstName'],
                Colors.grey,
                20,
                false,
              ),
              subtitle: txt(
                jasonList![index]['lastName'],
                Colors.grey,
                20,
                false,
              ),
            ),
          );
        },
      ),
    );
  }
}*/