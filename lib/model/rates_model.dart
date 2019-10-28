import 'package:currency_convert/data/rates_data.dart';
import 'package:currency_convert/util/requests.dart';

class Rates {
  Future<Map<String, dynamic>> getRatesApi(String base) async {
    Request request = Request(base);
    var jsonString = await request.getJson();
    var rate = rateFromJson(jsonString);
    return rate.rates;
  }

  saveRatesLocal(String base) async {
    Map<String, dynamic> map = await getRatesApi(base);
    List<Map<String, dynamic>> jsonLocal = [];
    RateDataLocal rateDataLocal = RateDataLocal();
    map.forEach((key, value) {
      Map<String, dynamic> mapLocal = {
        "currency": "$key",
        "value": "$value",
      };
      //save on local json DATA from the API more the flag path, currency name and symbol

      switch (key) {
        case "AUD":
          {
            mapLocal["flag"] = "assets/flags/au.png";
            mapLocal["name"] = "Australian dollar";
            mapLocal["symbol"] = "\$";
          }
          break;

        case "BGN":
          {
            mapLocal["flag"] = "assets/flags/bg.png";
            mapLocal["name"] = "Bulgarian lev";
            mapLocal["symbol"] = "лв";
          }
          break;

        case "BRL":
          {
            mapLocal["flag"] = "assets/flags/br.png";
            mapLocal["name"] = "Brazilian real";
            mapLocal["symbol"] = "R\$";
          }
          break;

        case "CAD":
          {
            mapLocal["flag"] = "assets/flags/ca.png";
            mapLocal["name"] = "Canadian dollar";
            mapLocal["symbol"] = "\$";
          }
          break;

        case "CHF":
          {
            mapLocal["flag"] = "assets/flags/ch.png";
            mapLocal["name"] = "Swiss franc";
            mapLocal["symbol"] = "CHF";
          }
          break;

        case "CNY":
          {
            mapLocal["flag"] = "assets/flags/cn.png";
            mapLocal["name"] = "Chinese yuan renminbi";
            mapLocal["symbol"] = "¥";
          }
          break;

        case "CZK":
          {
            mapLocal["flag"] = "assets/flags/cz.png";
            mapLocal["name"] = "Czech koruna";
            mapLocal["symbol"] = "Kč";
          }
          break;

        case "DKK":
          {
            mapLocal["flag"] = "assets/flags/dk.png";
            mapLocal["name"] = "Danish krone";
            mapLocal["symbol"] = "\$";
          }
          break;
        case "EUR":
          {
            mapLocal["flag"] = "assets/flags/eu.png";
            mapLocal["name"] = "Euro";
            mapLocal["symbol"] = "€";
          }
          break;

        case "GBP":
          {
            mapLocal["flag"] = "assets/flags/gb.png";
            mapLocal["name"] = "Pound sterling";
            mapLocal["symbol"] = "£";
          }
          break;

        case "HKD":
          {
            mapLocal["flag"] = "assets/flags/hk.png";
            mapLocal["name"] = "Hong Kong dollar";
            mapLocal["symbol"] = "\$";
          }
          break;
        case "HRK":
          {
            mapLocal["flag"] = "assets/flags/hr.png";
            mapLocal["name"] = "Croatian kuna";
            mapLocal["symbol"] = "kn";
          }
          break;
        case "HUF":
          {
            mapLocal["flag"] = "assets/flags/hu.png";
            mapLocal["name"] = "Hungarian forint";
            mapLocal["symbol"] = "Ft";
          }
          break;
        case "IDR":
          {
            mapLocal["flag"] = "assets/flags/id.png";
            mapLocal["name"] = "Indonesian rupiah";
            mapLocal["symbol"] = "Rp";
          }
          break;

        case "ILS":
          {
            mapLocal["flag"] = "assets/flags/il.png";
            mapLocal["name"] = "Israeli shekel";
            mapLocal["symbol"] = "₪";
          }
          break;

        case "INR":
          {
            mapLocal["flag"] = "assets/flags/in.png";
            mapLocal["name"] = "AIndian rupee";
            mapLocal["symbol"] = "TD";
          }
          break;
        case "ISK":
          {
            mapLocal["flag"] = "assets/flags/is.png";
            mapLocal["name"] = "Icelandic kronar";
            mapLocal["symbol"] = "kr";
          }
          break;

        case "JPY":
          {
            mapLocal["flag"] = "assets/flags/jp.png";
            mapLocal["name"] = "Japanese yen";
            mapLocal["symbol"] = "¥";
          }
          break;
        case "KRW":
          {
            mapLocal["flag"] = "assets/flags/kr.png";
            mapLocal["name"] = "South Korean won";
            mapLocal["symbol"] = "₩";
          }
          break;

        case "MXN":
          {
            mapLocal["flag"] = "assets/flags/mx.png";
            mapLocal["name"] = "Mexican peso";
            mapLocal["symbol"] = "\$";
          }
          break;
        case "MYR":
          {
            mapLocal["flag"] = "assets/flags/my.png";
            mapLocal["name"] = "Malaysian ringgit";
            mapLocal["symbol"] = "RM";
          }
          break;
        case "NOK":
          {
            mapLocal["flag"] = "assets/flags/no.png";
            mapLocal["name"] = "Norwegian krone";
            mapLocal["symbol"] = "kr";
          }
          break;

        case "NZD":
          {
            mapLocal["flag"] = "assets/flags/nz.png";
            mapLocal["name"] = "New Zealand dollar";
            mapLocal["symbol"] = "\$";
          }
          break;
        case "PHP":
          {
            mapLocal["flag"] = "assets/flags/ph.png";
            mapLocal["name"] = "Philippine peso";
            mapLocal["symbol"] = "₱";
          }
          break;

        case "PLN":
          {
            mapLocal["flag"] = "assets/flags/pl.png";
            mapLocal["name"] = "Polish zloty";
            mapLocal["symbol"] = "zł";
          }
          break;
        case "RON":
          {
            mapLocal["flag"] = "assets/flags/ro.png";
            mapLocal["name"] = "Romanian leu";
            mapLocal["symbol"] = "kr";
          }
          break;
        case "RUB":
          {
            mapLocal["flag"] = "assets/flags/ru.png";
            mapLocal["name"] = "Russian rouble";
            mapLocal["symbol"] = "₽";
          }
          break;

        case "SEK":
          {
            mapLocal["flag"] = "assets/flags/se.png";
            mapLocal["name"] = "Swedish krona";
            mapLocal["symbol"] = "kr";
          }
          break;
        case "SGD":
          {
            mapLocal["flag"] = "assets/flags/sg.png";
            mapLocal["name"] = "Singapore dollar";
            mapLocal["symbol"] = "\$";
          }
          break;

        case "THB":
          {
            mapLocal["flag"] = "assets/flags/th.png";
            mapLocal["name"] = "Thai baht";
            mapLocal["symbol"] = "฿";
          }
          break;
        case "TRY":
          {
            mapLocal["flag"] = "assets/flags/tr.png";
            mapLocal["name"] = "Turkish lira";
            mapLocal["symbol"] = "TD";
          }
          break;
        case "USD":
          {
            mapLocal["flag"] = "assets/flags/us.png";
            mapLocal["name"] = "US dollar";
            mapLocal["symbol"] = "\$";
          }
          break;

        case "ZAR":
          {
            mapLocal["flag"] = "assets/flags/za.png";
            mapLocal["name"] = "South African rand";
            mapLocal["symbol"] = "R";
          }
          break;
      }
      jsonLocal.add(mapLocal);
    });
    rateDataLocal.saveData(jsonLocal);
  }
}
