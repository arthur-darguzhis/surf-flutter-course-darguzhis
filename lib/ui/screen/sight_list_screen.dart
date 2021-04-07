import 'package:flutter/material.dart';
import 'package:places/mocks.dart';
import 'package:places/ui/res/text_style.dart';
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
      appBar: CustomAppBar(),
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


class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 16,
        right: 16,
        bottom: 16,
      ),
      child: SafeArea(
        child: Text(
          'Список\n'
              'интересных мест',
          textAlign: TextAlign.left,
          style: AppTextStyles.textBold32,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size(double.infinity, 100);
}
