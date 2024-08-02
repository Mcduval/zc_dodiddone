// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class DoDidDoneTheme {
  static ThemeData lightTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color(0xFF4CEB8B), // Your first color
      brightness: Brightness.light,
      primary: const Color(0xFF9F7BF6), // Your second color
      onPrimary: Colors.white,
      secondary: const Color(0xFF4CEB8B),
      onSecondary: Colors.white,
      error: Colors.red,
      onError: Colors.white,
      background: const Color(0xFF9F7BF6),
      onBackground: Colors.white,
      surface: const Color(0xFF4CEB8B),
      onSurface: Colors.white,
    ),
    useMaterial3: true,
    // Add more theme properties here as needed
  );

  static ThemeData darkTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color(0xFF4CEB8B), // Your first color
      brightness: Brightness.dark,
      primary: const Color(0xFF9F7BF6), // Your second color
      onPrimary: Colors.white,
      secondary: const Color(0xFF4CEB8B),
      onSecondary: Colors.white,
      error: Colors.red,
      onError: Colors.white,
      background: const Color(0xFF9F7BF6),
      onBackground: Colors.white,
      surface: const Color(0xFF4CEB8B),
      onSurface: Colors.white,
    ),
    useMaterial3: true,
    // Add more theme properties here as needed
  );
}
