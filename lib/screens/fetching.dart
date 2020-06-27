
import 'package:flutter/material.dart';
import 'package:word_time/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Fetching extends StatefulWidget {
  @override
  _FetchingState createState() => _FetchingState();
}

class _FetchingState extends State<Fetching> {

  void setupWorldTime() async {
  WorldTime instance = WorldTime(place: 'London', flag: 'China.png', url: 'Europe/London');
  await instance.getWatch();
  
  Navigator.pushReplacementNamed(context, '/index', arguments: {
    'place': instance.place,
    'flag': instance.flag,
    'clock': instance.clock ,
    'isDark': instance.isDark,
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
      backgroundColor: Colors.blueAccent,
      body:
      Center(
        child: SpinKitRing(
          color: Colors.white,
          size: 50,
        ),
      ),
    );
  }
}