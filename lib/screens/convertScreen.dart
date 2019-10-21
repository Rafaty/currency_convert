import 'package:currency_convert/screens/widgets/currencyField.dart';
import 'package:currency_convert/screens/widgets/textFieldCustom.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ConvertScreen extends StatefulWidget {
  @override
  _ConvertScreenState createState() => _ConvertScreenState();
}

class _ConvertScreenState extends State<ConvertScreen> {
  Map<String,dynamic> dataFrom = {
    "flag":"assets/flags/au.png",
    "currency":"AUD"

  };
  Map<String,dynamic> dataTo= {
    "flag":"assets/flags/us.png",
    "currency":"USA"
  };

  TextEditingController _controllerAmount = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 25.0),
            child: Text('CONVERTED CURRENCY' + ' (USD)'),
          ),
          Text(
            '\$ ' + '18,124.26',
            style: TextStyle(
              fontSize: 50,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12.0, 35.0, 12.0, 0),
            child: CustomTextField(controller: _controllerAmount,),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left:12.0,top:20.0),
                child: CurrencyField(title: 'FROM',data: dataFrom, onTap: () {},),
              ),
              SizedBox(width: 10.00,),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(right:12.0,top:20.0),
                child: CurrencyField(title: 'TO',data: dataTo,onTap: () {},),
              ),
            ],
          ),
        ],
      ),
    );
  }
}


