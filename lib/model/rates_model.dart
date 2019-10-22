import 'package:currency_convert/data/rates_data.dart';
import 'package:currency_convert/util/requests.dart';

class Rates {
  getRates(String base) async {
    Request request = Request(base);

    var jsonString = await request.getJson();

    var rate = rateFromJson(jsonString);
    
    return rate.rates;
  }
}
