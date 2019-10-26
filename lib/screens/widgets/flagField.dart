import 'package:flutter/material.dart';

class FlagField extends StatefulWidget {
  final Map<String, dynamic> data;

  FlagField({@required this.data});

  @override
  _FlagFieldState createState() => _FlagFieldState();
}

class _FlagFieldState extends State<FlagField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(7.0),
      child: Container(
        width: 150,
        height: 100,
        child: Container(
           decoration: BoxDecoration(
            image: DecorationImage(
              colorFilter: ColorFilter.mode(
                Color.fromARGB(120, 20, 10, 40),
                BlendMode.srcOver,
              ),
              image: AssetImage(widget.data["flag"]),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(3.00),
            boxShadow: [
              BoxShadow(
                blurRadius: 1.0,
                color: Colors.white,
              ),
            ]),
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Positioned(
                left: 3.0,
                bottom: 2.0,
                child: Text(widget.data["name"] ?? 'Brazilian Real'),
              ),
              Positioned(
                bottom: 40.00,
                right: 50.00,
                child: Row(
                  children: <Widget>[
                    Text( 
                      widget.data["symbol"] ?? 'R\$',
                      style:TextStyle(
                        fontSize: 15.00,
                      ),
                    ),
                    Padding(

                      padding: const EdgeInsets.only(right:2.0),
                      child: Text(
                         '3,50',
                        style: TextStyle(fontSize: 40.00),
                        ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 10.00,
                right: 10.00,
                child: Text(
                  widget.data["currency"] ?? 'BRL',
                  style: TextStyle(
                    fontSize: 30.0,
                    // fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
