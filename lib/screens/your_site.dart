import 'package:flutter/material.dart';

class YourPlace extends StatefulWidget {
  @override
  _YourPlaceState createState() => _YourPlaceState();
}

class _YourPlaceState extends State<YourPlace> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('select your site'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Text('select your place!'),
    );
  }
}