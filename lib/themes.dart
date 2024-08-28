import 'package:flutter/material.dart';

class FontSizes {
  static const extraSmall = 14.0;
  static const small = 16.0;
  static const standard = 18.0;
  static const large = 20.0;
  static const extraLarge= 24.0;
  static const doubleExtraLarge = 26.0;
}

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  appBarTheme: AppBarTheme(
    backgroundColor: const Color(0xFF3369FF),
    titleTextStyle: const TextStyle(
      color: Colors.white,
      fontSize: FontSizes.large,
      fontWeight: FontWeight.bold,
    ),
    iconTheme: const IconThemeData(color: Colors.white),
  ),
  colorScheme: ColorScheme.light(surface: Colors.white,
    primary: const Color(0xFF3369FF),
    secondary: Colors.grey.shade200,
    onPrimary: Colors.white,
    onSurface: Colors.black,
  ),
  inputDecorationTheme: InputDecorationTheme(// Set a grey background in light mode
  ),
  textTheme: TextTheme(
    titleLarge: const TextStyle(color: Colors.black),
    titleSmall: const TextStyle(color: Colors.black),
    bodyMedium: TextStyle(
      color: Colors.white,
      fontSize: FontSizes.small,
    ),
    bodySmall: TextStyle(
      color: Colors.black,
      fontSize: FontSizes.small,
    ),
  ),
);

ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.grey[900],
    titleTextStyle: const TextStyle(
      color: Colors.white,
      fontSize: FontSizes.large,fontWeight: FontWeight.bold,
    ),
    iconTheme: const IconThemeData(color: Colors.white),
  ),
  colorScheme: ColorScheme.dark(
    surface: Colors.black,
    primary: const Color(0xFF3369FF),
    secondary: Colors.white,
    onPrimary: Colors.white,
    onSurface: Colors.black, // Text color on dark background should be black
  ),
  textTheme: TextTheme(
    titleLarge: const TextStyle(color: Colors.white),
    titleSmall: const TextStyle(color: Colors.white),
    bodyMedium: TextStyle(
      color: Colors.white, // Text color in dark mode set to black
      fontSize: FontSizes.small,
    ),
    bodySmall: TextStyle(
      color: Colors.black, // Text color in dark mode set to black
      fontSize: FontSizes.small,
    ),
  ),
);