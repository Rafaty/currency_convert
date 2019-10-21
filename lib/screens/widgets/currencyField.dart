import 'package:flutter/material.dart';

class CurrencyField extends StatefulWidget {
  final String title;
  final Map<String,dynamic> data;

  CurrencyField({this.title,this.data});

  @override
  _CurrencyFieldState createState() => _CurrencyFieldState();
}

class _CurrencyFieldState extends State<CurrencyField> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double heigth = MediaQuery.of(context).size.height;
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        widget.title != null
            ? Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text(widget.title),
              )
            : Container(),
        Container(
          width: width / 2.3,
          height: 50.00,
          color: Colors.white,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Center(
                    child: Image.asset(
                      widget.data["flag"]!= null ? widget.data["flag"]:
                  "assets/flags/us.png",
                  width: 45,
                  height: 80,
                )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Center(
                    child: Text(
                  widget.data["currency"]!=null ? widget.data["currency"]:'USD',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 20.00),
                )),
              ),
              Spacer(),
              Center(
                  child: Icon(
                Icons.arrow_drop_down,
                color: Colors.grey,
              )),
            ],
          ),
        ),
      ],
    );
  }
}
