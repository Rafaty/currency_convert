import 'dart:convert';

import 'dart:io';

import 'package:path_provider/path_provider.dart';

RateDataApi rateFromJson(String str) => RateDataApi.fromJson(json.decode(str));

String rateToJson(RateDataApi data) => json.encode(data.toJson());

class RateDataApi {
  Map<String, double> rates;
  String base;
  DateTime date;

  RateDataApi({
    this.rates,
    this.base,
    this.date,
  });

  factory RateDataApi.fromJson(Map<String, dynamic> json) => RateDataApi(
        rates: Map.from(json["rates"])
            .map((k, v) => MapEntry<String, double>(k, v.toDouble())),
        base: json["base"],
        date: DateTime.parse(json["date"]),
      );

  Map<String, dynamic> toJson() => {
        "rates": Map.from(rates).map((k, v) => MapEntry<String, dynamic>(k, v)),
        "base": base,
        "date":
            "${date.year.toString().padLeft(4, '0')}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}",
      };
}

class RateDataLocal {
  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();

    return directory.path;
  }

  Future<File> get _localFile async {
    final path = await _localPath;
    return File('$path/data.json');
  }

  Future<String> readData() async {
    try {
      final file = await _localFile;

      return file.readAsString();
    } catch (e) {
      return null;
    }
  }

  Future<File> saveData(List list) async {
    String data = json.encode(list);

    final file = await _localFile;
    // file.deleteSync();
    file.createSync();
    return file.writeAsString(data);
  }
}
