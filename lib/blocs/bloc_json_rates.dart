import 'dart:async';
import 'dart:convert';



import 'package:currency_convert/data/rates_data.dart';


class RatesBloc {
  StreamController _streamController = StreamController();

  Sink get input => _streamController.sink;

  Stream get output => _streamController.stream;

  List<dynamic> getJson() {
    List ratesList = [];

    RateDataLocal jsonLocal = RateDataLocal();
    jsonLocal.readData().then((data) {
      ratesList = json.decode(data);
      input.add(ratesList);

      
    });
    return ratesList;
  }
}
