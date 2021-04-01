import 'package:flutter/painting.dart';
import 'package:places/ui/res/colors.dart';

/// Стили текстов
TextStyle _text = const TextStyle(
      fontStyle: FontStyle.normal,
      color: textColorPrimary,
    ),

// w100 Thin, the least thick
// w200 Extra-light
// w300 Light
// w400 Normal / regular / plain
    textRegular14Primary = _text.copyWith(color: textColorPrimary, fontSize: 14, fontWeight: FontWeight.w400),
    textRegular14Secondary = _text.copyWith(color: textColorSecondary, fontSize: 14, fontWeight: FontWeight.w400),

// w500 Medium
    textMedium16White = _text.copyWith(color: textColorPrimary, fontWeight: FontWeight.w500, fontSize: 16),
// w600 Semi-bold
// w700 Bold
    textBold14Primary = _text.copyWith(color: textColorPrimary, fontSize: 14, fontWeight: FontWeight.w700),
    textBold14White = _text.copyWith(color: white, fontSize: 14, fontWeight: FontWeight.w700),
    textBold24Primary = _text.copyWith(color: textColorPrimary, fontSize: 24, fontWeight: FontWeight.w700),
    textBold32 = _text.copyWith(color: appBarText, fontSize: 32, fontFamily: 'Roboto', fontWeight: FontWeight.bold);

// w800 Extra-bold
// w900 Black, the most thick
