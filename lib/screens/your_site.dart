import 'dart:async';

import 'package:flutter/material.dart';

class YourPlace extends StatefulWidget {
  @override
  _YourPlaceState createState() => _YourPlaceState();
}

class _YourPlaceState extends State<YourPlace> {
  void getInfo() async {
    String dataOne = await Future.delayed(Duration(seconds: 3), (){
      return '3 seconds';
      }
    );

    String dataTwo = await Future.delayed(Duration(seconds: 2), (){
      return '2 seconds';
      }
    );
    
    print('who is fast?');
    print('combined: $dataOne and $dataTwo');
  }

  int counter = 0;

  @override
  void initState() {
    super.initState();
    getInfo();
    print('intit start');
  }
  @override
  Widget build(BuildContext context) {
    print('builder run');
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('select your site'),
        centerTitle: true,
        elevation: 0,
      ),
      body: RaisedButton(
        child: Text('counter is $counter'),
        onPressed: (){
          setState(() {
            counter += 1;
          });
        },  
      ),
    );
  }
}