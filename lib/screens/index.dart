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
    String coverPic = data['isDark'] ? 'evening.jpeg' : 'daytime.jpg';
    Color nowColor = data['isDark'] ? Colors.white : Colors.black;

    return Scaffold(
      appBar: AppBar(
        title: Text('Home page'),
      ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('lib/assets/pics/$coverPic'),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: Column(
              children: <Widget>[
                FlatButton.icon(
                  onPressed: (){
                    Navigator.pushNamed(context, '/place');
                  },
                  icon: Icon(
                    Icons.edit_location,
                    color: nowColor,
                    ),
                  label: Text(
                    'edit location',
                    style: TextStyle(
                      color: nowColor,
                    ),
                    ),
                  ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      data['place'],
                      style: TextStyle(
                        color: nowColor,
                        fontSize: 28,
                        letterSpacing: 2,
                      )
                    ),
                  ],  
                ),
                SizedBox(height: 20,),
                Text(
                    data['clock'],
                    style: TextStyle(
                      color: nowColor,
                      fontSize: 40,
                    ),
                  ),
              ], 
            ),
          ),
        )
      ),
    );
  }
}