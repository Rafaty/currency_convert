import 'package:currency_convert/data/rates_data.dart';
import 'package:currency_convert/util/requests.dart';
import 'package:flutter/material.dart';

class Rates {
  Future<Map<String, dynamic>> getRatesApi(String base) async {
    Request request = Request(base);
    var jsonString = await request.getJson();
    var rate = rateFromJson(jsonString);

    return rate.rates;
  }

  saveRatesLocal(String base) async {
    Map<String, dynamic> map = await getRatesApi(base);
    List jsonLocal = [];
    RateDataLocal rateDataLocal = RateDataLocal();
    map.forEach((key, value) {
      jsonLocal.add("$key: $value");
      //save on local json path to flag of the country
      switch (key) {
        case "AUD":
          {
            jsonLocal.add("flag: assets/flags/au.png");
          }
          break;

        case "BGN":
          {
            jsonLocal.add("flag: assets/flags/bg.png");
          }
          break;

        case "BRL":
          {
            jsonLocal.add("flag: assets/flags/br.png");
          }
          break;

        case "CAD":
          {
            jsonLocal.add("flag: assets/flags/ca.png");
          }
          break;

        case "CHF":
          {
            jsonLocal.add("flag: assets/flags/ch.png");
          }
          break;

        case "CNY":
          {
            jsonLocal.add("flag: assets/flags/cn.png");
          }
          break;

        case "CZK":
          {
            jsonLocal.add("flag: assets/flags/cz.png");
          }
          break;

        case "DKK":
          {
            jsonLocal.add("flag: assets/flags/dk.png");
          }
          break;
        case "GBP":
          {
            jsonLocal.add("flag: assets/flags/gb.png");
          }
          break;

        case "HKD":
          {
            jsonLocal.add("flag: assets/flags/.png");
          }
          break;
        case "HRK":
          {
            jsonLocal.add("flag: assets/flags/hk.png");
          }
          break;

        case "IDR":
          {
            jsonLocal.add("flag: assets/flags/id.png");
          }
          break;

        case "ILS":
          {
            jsonLocal.add("flag: assets/flags/il.png");
          }
          break;

        case "INR":
          {
            jsonLocal.add("flag: assets/flags/in.png");
          }
          break;
        case "ISK":
          {
            jsonLocal.add("flag: assets/flags/is.png");
          }
          break;

        case "JPY":
          {
            jsonLocal.add("flag: assets/flags/jp.png");
          }
          break;
        case "KRW":
          {
            jsonLocal.add("flag: assets/flags/kr.png");
          }
          break;

        case "MXN":
          {
            jsonLocal.add("flag: assets/flags/mx.png");
          }
          break;
        case "MYR":
          {
            jsonLocal.add("flag: assets/flags/my.png");
          }
          break;
        case "NOK":
          {
            jsonLocal.add("flag: assets/flags/no.png");
          }
          break;

        case "NZD":
          {
            jsonLocal.add("flag: assets/flags/nz.png");
          }
          break;
        case "PHP":
          {
            jsonLocal.add("flag: assets/flags/ph.png");
          }
          break;

        case "PLN":
          {
            jsonLocal.add("flag: assets/flags/pl.png");
          }
          break;
        case "RON":
          {
            jsonLocal.add("flag: assets/flags/ro.png");
          }
          break;
        case "RUB":
          {
            jsonLocal.add("flag: assets/flags/ru.png");
          }
          break;

        case "SEK":
          {
            jsonLocal.add("flag: assets/flags/se.png");
          }
          break;
        case "SGD":
          {
            jsonLocal.add("flag: assets/flags/sg.png");
          }
          break;

        case "THB":
          {
            jsonLocal.add("flag: assets/flags/th.png");
          }
          break;
        case "TRY":
          {
            jsonLocal.add("flag: assets/flags/tr.png");
          }
          break;
        case "USD":
          {
            jsonLocal.add("flag: assets/flags/us.png");
          }
          break;

        case "ZAR":
          {
            jsonLocal.add("flag: assets/flags/za.png");
          }
          break;
      }
    });
    rateDataLocal.saveData(jsonLocal);
  }
}
