import 'package:currency_convert/mainHome.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          //X]primaryColor: Color(0xFF555659),
         // brightness: Brightness.dark,
          accentColor: Colors.white70,
      ),
      debugShowCheckedModeBanner: false,
      home: MainHome(),
    );
  }
}
