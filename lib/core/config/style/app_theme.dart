import 'package:flutter/material.dart';
import 'package:whatif/core/config/style/app_color.dart';
import 'app_text.dart';

class AppTheme {
  static ThemeData get theme {
    return ThemeData(
      brightness: Brightness.dark,
      fontFamily: AppTextStyle.fontFamily,
      primaryColor: AppColor.getMaterialColorFromColor(AppColor.white)
    );
  }
}

class TextThemes{

  static TextTheme get textTheme {
    return const TextTheme(
      headline1: AppTextStyle.h1,
      headline2: AppTextStyle.h2,
      headline3: AppTextStyle.h3, 
    );
  }
}
