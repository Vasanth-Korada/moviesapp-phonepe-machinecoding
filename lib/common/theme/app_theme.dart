import 'package:flutter/material.dart';
import 'package:movies_app_phonepe/common/theme/app_colors.dart';
import 'package:movies_app_phonepe/common/theme/palette.dart';

final ThemeData movieTheme = ThemeData(
  pageTransitionsTheme: const PageTransitionsTheme(builders: {
    TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
    TargetPlatform.android: CupertinoPageTransitionsBuilder(),
  }),
  brightness: Brightness.light,
  primaryColor: AppColors.primaryColor,
  primarySwatch: Palette.kToDark,
  scaffoldBackgroundColor: AppColors.bgColor,
);
