import 'package:flutter/material.dart';

class Main extends StatefulWidget {
  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  Map data = {};

  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context).settings.arguments;
    print(data);
    return Scaffold(
      appBar: AppBar(
        title: Text('Home page'),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            FlatButton.icon(
              onPressed: (){
                Navigator.pushNamed(context, '/place');
              },
              icon: Icon(Icons.edit_location),
              label: Text('edit location'),
              ),
          ], 
        )
      ),
    );
  }
}