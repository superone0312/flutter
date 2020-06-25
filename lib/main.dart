import 'package:flutter/material.dart';
import 'screens/fetching.dart';
import 'screens/your_site.dart';
import 'screens/index.dart';

void main() => runApp(
  MaterialApp(
  initialRoute: '/',
  routes:{
    '/': (context) => Fetching(),
    '/index': (context) => Main(),
    '/place': (context) => YourPlace(),
    },
  )
);