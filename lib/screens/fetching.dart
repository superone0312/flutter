import 'package:flutter/material.dart';
import 'package:word_time/services/world_time.dart';

class Fetching extends StatefulWidget {
  @override
  _FetchingState createState() => _FetchingState();
}

class _FetchingState extends State<Fetching> {
  String clock = 'Data on its way ...';

  void setupWorldTime() async {
  WorldTime instance = WorldTime(place: 'Shanghai', flag: 'China.png', url: 'Asia/Shanghai');
  await instance.getWatch();
  setState(() {
    clock = instance.clock;  
  });
  }

  @override
  void initState() {
    super.initState();
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      SafeArea(child: Text(clock)),
    );
  }
}