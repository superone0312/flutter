import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Fetching extends StatefulWidget {
  @override
  _FetchingState createState() => _FetchingState();
}

class _FetchingState extends State<Fetching> {

  void getInfo() async {
    String apiUrl = 'https://jsonplaceholder.typicode.com/todos/1';
    Response response = await get(apiUrl);
    Map dict = jsonDecode(response.body);
    print(dict['id']);
  }

  @override
  void initState() {
    super.initState();
    getInfo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      SafeArea(child: Text('we are working hard to retrive data.')),
    );
  }
}