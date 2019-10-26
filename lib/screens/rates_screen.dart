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
  Map<String, dynamic> mapData;
  TextEditingController controllerSearch = TextEditingController();

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
        Container(
          height: MediaQuery.of(context).size.height / 5,
          color: Theme.of(context).primaryColor,
          child: Stack(
            children: <Widget>[
              Positioned(
                left: 30.0,
                top: 20.0,
                child: Text(
                  'Popular Currency',
                  style: TextStyle(fontSize: 35, color: Colors.white),
                ),
              ),
              Positioned(
                right: 30.0,
                top: 20.0,
                child: Center(
                  child: InkWell(
                    onTap: (){},
                    splashColor: Colors.white,
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/flags/us.png'),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 30.00,
                right: 30.00,
                bottom: 20.0,
                child: SearchField(
                  controller: controllerSearch,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: ratesList.length,
            itemBuilder: (BuildContext context, int index) {
              final item = ratesList[index];
              mapData = {
                "currency": item["currency"],
                "name": item["name"],
                "flag": item["flag"],
                "value": item["value"],
                "symbol": item["symbol"],
              };
              return FlagField(
                data: mapData,
              );
            },
          ),
        ),
      ],
    );
  }
}
