import 'package:flutter/material.dart';

class AppTheme {
  static const Color corPrimaria = Color(0xFF4A00E0);

  static final ThemeData claro = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(seedColor: corPrimaria),
    scaffoldBackgroundColor: const Color(0xFFF5F3FF),
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      backgroundColor: corPrimaria,
      foregroundColor: Colors.white,
    ),
    textTheme: const TextTheme(
      titleLarge: TextStyle(fontWeight: FontWeight.bold),
    ),
  );
}