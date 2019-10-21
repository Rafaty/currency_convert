import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {

 final TextEditingController controller;

  CustomTextField({@required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Text('AMOUT'),
        ),
        Container(
          height: 50.00,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: TextField(
            controller: controller,
            style: TextStyle(
              fontSize: 20.00,
              color: Colors.black,
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              
            ),
          ),
        ),
      ],
    );
  }
}
