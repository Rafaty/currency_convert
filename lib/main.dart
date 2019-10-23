import 'package:currency_convert/data/rates_data.dart';
import 'package:currency_convert/mainHome.dart';
import 'package:currency_convert/model/rates_model.dart';

import 'package:flutter/material.dart';

Future main() async {

  Rates rates = Rates();

  rates.saveRatesLocal("AUD");

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFF555659),
        brightness: Brightness.dark,
        accentColor: Colors.white70,
      ),
      debugShowCheckedModeBanner: false,
      home: MainHome(),
    );
  }
}
