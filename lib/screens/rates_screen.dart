import 'dart:convert';

import 'package:currency_convert/data/rates_data.dart';
import 'package:currency_convert/screens/widgets/flagField.dart';
import 'package:currency_convert/screens/widgets/searchField.dart';
import 'package:flutter/material.dart';

class RateScreen extends StatefulWidget {
  @override
  _RateScreenState createState() => _RateScreenState();
}

class _RateScreenState extends State<RateScreen> {
  List ratesList = [];
  Map<String,dynamic> mapData;
  TextEditingController controllerSearch =TextEditingController();

  @override
  void initState() {
    super.initState();
    RateDataLocal jsonLocal = RateDataLocal();
    jsonLocal.readData().then((data) {
      setState(() {
        ratesList = json.decode(data);
      });
      print(ratesList);
    
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
     
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(35.0),
          child: SearchField(
            controller:controllerSearch,
          ),
        ),
        Expanded(
                  child: GridView.builder(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemCount: ratesList.length,
            itemBuilder: (BuildContext context, int index) {
              final item = ratesList[index];
                 mapData= {
                "currency": item["currency"],
                "name": item["name"],
                "flag": item["flag"],
                "value": item["value"],
                "symbol": item["symbol"],
                 };
             
              return FlagField(data:mapData);
            },
          ),
        ),
      ],
    );
  }
}
