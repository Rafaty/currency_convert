import 'package:currency_convert/screens/widgets/currencyField.dart';
import 'package:currency_convert/screens/widgets/textFieldCustom.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ConvertScreen extends StatefulWidget {
  @override
  _ConvertScreenState createState() => _ConvertScreenState();
}

class _ConvertScreenState extends State<ConvertScreen> {
  Map<String, dynamic> data;

  Map<String, dynamic> dataFrom = {
    "flag": "assets/flags/au.png",
    "currency": "AUD",
    "value": "1.23"
  };
  Map<String, dynamic> dataTo = {
    "flag": "assets/flags/us.png",
    "currency": "USA",
    "value": "0.93"
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
            child: CustomTextField(
              controller: _controllerAmount,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 12.0, top: 20.0),
                child: CurrencyField(
                  title: 'FROM',
                  data: dataFrom,
                  onTap: () {},
                ),
              ),
              SizedBox(
                width: 10.00,
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 12.0, top: 20.0),
                child: CurrencyField(
                  title: 'TO',
                  data: dataTo,
                  onTap: () {},
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 45.0,top: 10.00),
                child: Text('1 ' +
                    dataFrom["currency"] +
                    ' = ' +
                    dataTo["value"] +
                    '(${dataTo["currency"]})'),
              ),
              SizedBox(width: 20,),
              Spacer(),
                Padding(
                padding: const EdgeInsets.only(right: 45.00,top: 10.00),
                child: Text('1 ' +
                    dataTo["currency"] +
                    ' = '  +
                    dataFrom["value"] +
                    '(${dataFrom["currency"]})'),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left:12.00,right:12.00,top: 40.00),
            child: Center(
              child: Container(
                 width: MediaQuery.of(context).size.width,
                 height: 60,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(8.00),
                   color: Colors.blueAccent,
                   boxShadow: [
                     BoxShadow(
                       blurRadius: 2.0,
                     color: Colors.white,
                    ),
                   ]
                 ),
                 child: FlatButton(
                   child: Text('convert'),
                    onPressed: () {},
                 ),
              ),
            ),
          ),

        ],
      
      ),
    );
  }
}
