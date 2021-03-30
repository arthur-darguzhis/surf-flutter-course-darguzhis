import 'package:flutter/material.dart';

///screen of "interesting places"
class SightListScreen extends StatefulWidget {
  @override
  _SightListScreenState createState() => _SightListScreenState();
}

class _SightListScreenState extends State<SightListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        title: Text(
          'Список\n'
          'интересных мест',
          textAlign: TextAlign.left,
          style: TextStyle(
              color: Colors.black,
              fontSize: 32,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
      ),
    );
  }
}
