import 'package:flutter/material.dart';
import 'package:places/ui/res/colors.dart';

class CustomBottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: AppColors.selectedBottomNavigationBarItem,
      unselectedItemColor: AppColors.unselectedBottomNavigationBarItem,
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
          icon: Icon(Icons.favorite),
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