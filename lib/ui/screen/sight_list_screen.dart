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
        title: RichText(
          text: TextSpan(
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 32,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.bold),
              children: [
                TextSpan(
                  text: 'C',
                  style: TextStyle(color: Colors.green),
                ),
                TextSpan(text: 'писок\n'),
                TextSpan(
                  text: 'и',
                  style: TextStyle(color: Colors.yellow),
                ),
                TextSpan(text: 'нтересных мест'),
              ]),
          textAlign: TextAlign.left,
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
      ),
    );
  }
}
