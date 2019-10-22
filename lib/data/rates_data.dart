import 'dart:convert';

RateData rateFromJson(String str) => RateData.fromJson(json.decode(str));

String rateToJson(RateData data) => json.encode(data.toJson());

class RateData {
    Map<String, double> rates;
    String base;
    DateTime date;

    RateData({
        this.rates,
        this.base,
        this.date,
    });

    factory RateData.fromJson(Map<String, dynamic> json) => RateData(
        rates: Map.from(json["rates"]).map((k, v) => MapEntry<String, double>(k, v.toDouble())),
        base: json["base"],
        date: DateTime.parse(json["date"]),
    );

    Map<String, dynamic> toJson() => {
        "rates": Map.from(rates).map((k, v) => MapEntry<String, dynamic>(k, v)),
        "base": base,
        "date": "${date.year.toString().padLeft(4, '0')}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}",
    };
}
