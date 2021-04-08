import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  fontFamily: "Roboto",
  appBarTheme: AppBarTheme(
    elevation: 0,
    backgroundColor: Colors.transparent,
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    type: BottomNavigationBarType.fixed,
    selectedItemColor: Color(0xFF252849),
    unselectedItemColor: Color(0xFF3B3E5B),
  ),
  cardColor: Color(0xffF5F5F5),
  tabBarTheme: TabBarTheme(
      labelColor: Color(0xFF3B3E5B),
      labelStyle: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w700),
      unselectedLabelColor: Color(0xFFF5F5F5),
      unselectedLabelStyle: TextStyle(color: Color(0xFF7C7E92), fontSize: 14, fontWeight: FontWeight.w700)),
  textTheme: TextTheme(
    /// For title from appBar
    headline1: TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 18),

    /// For title in card
    headline2: TextStyle(color: Color(0xFF3B3E5B), fontWeight: FontWeight.w500, fontSize: 16),

    /// Text time to visit
    headline3: TextStyle(color: Color(0xFF7C7E92), fontSize: 14, fontWeight: FontWeight.w400),

    // For title on picture
    headline4: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w700),

    // For title on details screen
    headline5: TextStyle(color: Color(0xFF3B3E5B), fontSize: 24, fontWeight: FontWeight.w700),

    headline6: TextStyle(color: Color(0xFF3B3E5B), fontSize: 14, fontWeight: FontWeight.w700),

    /// For green text
    caption: TextStyle(color: Color(0xFF4CAF50), fontWeight: FontWeight.w400, fontSize: 14),

    /// For description on place card
    bodyText1: TextStyle(color: Color(0xFF7C7E92), fontWeight: FontWeight.w400, fontSize: 14),

    /// For description on sight card screen
    bodyText2: TextStyle(color: Color(0xFF3B3E5B), fontSize: 14, fontWeight: FontWeight.w400),
  ),
);

ThemeData darkTheme = ThemeData(
  fontFamily: "Roboto",
  appBarTheme: AppBarTheme(
    elevation: 0,
    backgroundColor: Colors.transparent,
  ),
  brightness: Brightness.dark,
  scaffoldBackgroundColor: Color(0xFF21222C),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    type: BottomNavigationBarType.fixed,
    selectedItemColor: Color(0xFFFFFFFF),
    unselectedItemColor: Color(0xFFF5F5F5),
    backgroundColor: Color(0xFF21222C),
  ),
  cardColor: Color(0xFF1A1A20),
  tabBarTheme: TabBarTheme(
      labelColor: Color(0xFFFFFFFF),
      labelStyle: TextStyle(color: Color(0xFF3B3E5B), fontSize: 14, fontWeight: FontWeight.w700),
      unselectedLabelColor: Color(0xFF1A1A20),
      unselectedLabelStyle: TextStyle(color: Color(0xFF7C7E92), fontSize: 14, fontWeight: FontWeight.w700)),
  textTheme: TextTheme(
    /// For title from appBar
    headline1: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 18),

    /// For title in card
    headline2: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 16),

    /// Text time to visit
    headline3: TextStyle(color: Color(0xFF7C7E92), fontSize: 14, fontWeight: FontWeight.w400),

    // For title on picture
    headline4: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w700),

    // For title on details screen
    headline5: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.w700),

    headline6: TextStyle(color: Color(0xFF7C7E92), fontSize: 14, fontWeight: FontWeight.w700),

    /// For green text in schedule
    caption: TextStyle(color: Color(0xFF4CAF50), fontWeight: FontWeight.w400, fontSize: 14),

    /// For description of place
    bodyText1: TextStyle(color: Color(0xFF7C7E92), fontWeight: FontWeight.w400, fontSize: 14),

    /// For description on sight card screen
    bodyText2: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w400),
  ),
);
