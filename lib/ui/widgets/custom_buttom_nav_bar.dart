import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.list_alt),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.map_outlined),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset('res/icons/heart.svg'),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings_outlined),
          label: '',
        ),
      ],
    );
  }
}
