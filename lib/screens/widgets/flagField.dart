import 'package:flutter/material.dart';
import 'package:flutter_money_formatter/flutter_money_formatter.dart';

class FlagField extends StatefulWidget {
  final Map<String, dynamic> data;

  FlagField({@required this.data});

  @override
  _FlagFieldState createState() => _FlagFieldState();
}

class _FlagFieldState extends State<FlagField> {
  FlutterMoneyFormatter formattedValue;
  @override
  void initState() {
    super.initState();
    setState(() {
      formattedValue = FlutterMoneyFormatter(
          amount: double.parse(widget.data["value"]),
          settings: MoneyFormatterSettings(
              symbol: widget.data["symbol"],
              thousandSeparator: '.',
              decimalSeparator: ',',
              symbolAndNumberSeparator: ' ',
              fractionDigits: 3,
              compactFormatType: CompactFormatType.short
              )
        );
      }
   );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
          leading: CircleAvatar(
              backgroundImage: AssetImage(
            widget.data["flag"],
          )),
          title: Text(
            widget.data["currency"],
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            widget.data["name"],
            style: TextStyle(color: Colors.black87),
          ),
          trailing: Text(
            formattedValue.output.compactSymbolOnLeft,
            style: TextStyle(fontSize: 18.00, fontWeight: FontWeight.w600),
          )),
    );
  }
}
