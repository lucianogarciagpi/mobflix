import 'package:flutter/material.dart';

ThemeData Mytheme = ThemeData(
  // primarySwatch: ThemeColors.primaryColor,
  // primaryColor: ThemeColors.primaryColor,
  brightness: Brightness.dark,
  fontFamily: 'Roboto',
  textTheme: const TextTheme(
    titleLarge: TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.bold
    ),
    labelMedium: TextStyle(
      fontSize: 16,
    ),
    bodySmall: TextStyle(
      fontSize: 16,
      color: Colors.white
    ),
  ),
);
