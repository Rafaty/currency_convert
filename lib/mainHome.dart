import 'package:currency_convert/screens/convertScreen.dart';
import 'package:currency_convert/screens/rates_screen.dart';
import 'package:flutter/material.dart';

class MainHome extends StatefulWidget {
  @override
  _MainHomeState createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: DefaultTabController(
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(100.0),
            child: AppBar(
              title: Text('October 24'),
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.refresh),
                  onPressed: () {},
                )
              ],
              bottom: TabBar(tabs: [
                Tab(
                  text: 'Home',
                ),
                Tab(
                  text: 'Convert',
                ),
              ]),
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              RateScreen(),
              ConvertScreen(),
            ],
          ),
        ),
        length: 2,
      ),
    );
  }
}
