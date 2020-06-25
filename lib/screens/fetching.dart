import 'package:flutter/material.dart';

class Fetching extends StatefulWidget {
  @override
  _FetchingState createState() => _FetchingState();
}

class _FetchingState extends State<Fetching> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('we are working hard to retrive data.'),
    );
  }
}