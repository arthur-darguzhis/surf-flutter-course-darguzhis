import 'package:flutter/material.dart';
import 'package:places/ui/res/colors.dart';

class AppTextStyles {

  // w100 Thin, the least thick
  // w200 Extra-light
  // w300 Light

  // w400 Normal / regular / plain
  static const textRegular14Primary = TextStyle(color: AppColors.textColorPrimary, fontSize: 14, fontWeight: FontWeight.w400);
  static const textRegular14Secondary = TextStyle(color: AppColors.textColorSecondary, fontSize: 14, fontWeight: FontWeight.w400);
  static const textRegular14Schedule = TextStyle(color: AppColors.textColorSchedule, fontWeight: FontWeight.w400, fontSize: 14);

  // w500 Medium
  static const textMedium16White = TextStyle(color: AppColors.textColorPrimary, fontWeight: FontWeight.w500, fontSize: 16);
  static const textMedium16Primary = TextStyle(color: AppColors.textColorPrimary, fontWeight: FontWeight.w500, fontSize: 16);
  static const textMedium18Black = TextStyle(color: AppColors.appBarText, fontWeight: FontWeight.w500, fontSize: 18);
  static const textMedium18Secondary = TextStyle(color: AppColors.textColorSecondary, fontWeight: FontWeight.w500, fontSize: 18);

  // w600 Semi-bold

  // w700 Bold
  static const textBold14Primary = TextStyle(color: AppColors.textColorPrimary, fontSize: 14, fontWeight: FontWeight.w700);
  static const textBold14Secondary = TextStyle(color: AppColors.textColorSecondary, fontSize: 14, fontWeight: FontWeight.w700);
  static const textBold14White = TextStyle(color: AppColors.white, fontSize: 14, fontWeight: FontWeight.w700);
  static const textBold24Primary = TextStyle(color: AppColors.textColorPrimary, fontSize: 24, fontWeight: FontWeight.w700);
  static const textBold32 = TextStyle(color: AppColors.appBarText, fontSize: 32, fontFamily: 'Roboto', fontWeight: FontWeight.bold);

}