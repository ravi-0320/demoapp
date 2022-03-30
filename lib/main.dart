import 'dart:convert';

import 'package:animations/animations.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getdemo/myclass.dart';
import 'package:getdemo/nextpage.dart';
import 'package:getdemo/temp.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MaterialApp(
    home: test(),
  ));
}

class test extends StatefulWidget {
  const test({Key? key}) : super(key: key);

  @override
  _testState createState() => _testState();
}

class _testState extends State<test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(),
    );
  }
}





class demo extends StatefulWidget {
  const demo({Key? key}) : super(key: key);

  @override
  _demoState createState() => _demoState();
}
class _demoState extends State<demo> {

  student? s;
  bool val=false;
  getdata() async
  {
    var url = Uri.parse('https://jsonplaceholder.typicode.com/posts');
    var response = await http.get(url);
    dynamic data=jsonDecode(response.body);
    // print(data);

   setState(() {
     s=student.fromList(data);
     val=true;
   });

  }

  void getHttp() async {
    try {
      var response = await Dio().get('https://jsonplaceholder.typicode.com/posts');
      List l=response.data as List;
      print(l);

    } catch (e) {
      print(e);
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // getdata();
    getHttp();

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: val?ListView.builder(
        itemCount: s!.list!.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text("${s!.list![index].title}"),
            leading: Text("${s!.list![index].userid}"),
            trailing: Text("${s!.list![index].id}"),
            subtitle: Text("${s!.list![index].body}"),
          );
        },):Container(child: CircularProgressIndicator(),),
    );
  }
}



