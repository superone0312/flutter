import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Fetching extends StatefulWidget {
  @override
  _FetchingState createState() => _FetchingState();
}

class _FetchingState extends State<Fetching> {

  void getWatch() async {
    String apiUrl = 'http://worldtimeapi.org/api/timezone/Asia/Shanghai';
    Response response = await get(apiUrl);
    Map data = jsonDecode(response.body);
    //print(data);
    String datetime = data['datetime'];
    String offset = data['utc_offset'].substring(1,3);
    //print('$datatime and $offset');

    DateTime now = DateTime.parse(datetime);
    now =  now.add(Duration(hours: int.parse(offset)));
    print(now);
  }

  @override
  void initState() {
    super.initState();
    getWatch();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      SafeArea(child: Text('we are working hard to retrive data.')),
    );
  }
}