import 'package:flutter/material.dart';
import 'package:places/mocks.dart';
import 'package:places/ui/widgets/sight_card.dart';

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
        title: Text(
          'Список интересных мест',
          textAlign: TextAlign.left,
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
      body: Column(
        children: [
          SightCard(mocks[0]),
          SightCard(mocks[1]),
          SightCard(mocks[2]),
        ],
      ),
    );
  }
}
