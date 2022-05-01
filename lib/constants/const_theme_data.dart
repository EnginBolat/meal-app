import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:meal_app/constants/const_colors.dart';

AppColors appColors = AppColors();

ThemeData customThemeData = ThemeData(
  colorScheme: ColorScheme.fromSwatch().copyWith(primary: appColors.appColor),
  appBarTheme:
      const AppBarTheme(systemOverlayStyle: SystemUiOverlayStyle.light),
  fontFamily: "Intern",
  textTheme: const TextTheme(
    headline4: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w600,
    ),
    headline5: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w600,
    ),
    subtitle2: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w600,
      fontSize: 16,
    ),
  ),
);
