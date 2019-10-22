import 'dart:convert';

import 'package:currency_convert/util/consts.dart';
import 'package:dio/dio.dart';

class Request {
  String base;

  Request(this.base);

  getJson() async {
    var queryParameters = {"base": this.base};
    var jsonData;
    try {
      Response response =
          await Dio().get(baseUrl + "latest", queryParameters: queryParameters);
      jsonData =   jsonEncode(response.data);
      return jsonData;
    } catch (e) {
      print(e);
    }
  }

}
