import 'package:flutter/material.dart';
import 'package:gallary/screens/home_screen.dart';
// import 'package:gallary/api/image_api.dart';
// import 'package:gallary/screens/loading_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
