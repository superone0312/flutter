import 'package:flutter/material.dart';

class YourPlace extends StatefulWidget {
  @override
  _YourPlaceState createState() => _YourPlaceState();
}

class _YourPlaceState extends State<YourPlace> {
  int counter = 0;

  @override
  void initState() {
    super.initState();
    print('initial start');
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