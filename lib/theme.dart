import 'package:flutter/material.dart';

final ThemeData theme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    seedColor: Color(0x00391405)
  ),
  textTheme: TextTheme(
    titleLarge: TextStyle(
      fontFamily: "Ditty",
      fontSize: 40
    ),
    titleMedium: TextStyle(
      fontFamily: "Ditty",
      fontSize: 30
    ),
    bodyMedium: TextStyle(
      fontFamily: "Montserrat",
      fontSize: 21,
    ),
    bodySmall: TextStyle(
      fontFamily: "Montserrat",
      fontSize: 16
    )
  )
);