import 'package:flutter/material.dart';

abstract class CustomThemeData {
  // Tema claro
  static ThemeData light() {
    return ThemeData(
      colorScheme: ColorScheme.fromSwatch().copyWith(
        primary: Color(0xFFFDBD4E),
        secondary: Color(0xFF757575),
        background: Color(0xFFF5F5F5),// Branco suave com toque de cinza
        surface: Color(0xFF424242),
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: Color(0xFFFDBD4E),
          titleTextStyle: TextStyle(
          color: Color(0xFF424242),
          fontSize: 19,
          fontWeight: FontWeight.bold,
        ),
        elevation: 0,
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.all(15),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          padding: const EdgeInsets.all(15),
        ),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: Color(0xFFFDBD4E), // Define a cor do FAB para o mesmo dourado da cor primária
      ),

      useMaterial3: true,
    );
  }

  // Tema escuro
  // static ThemeData dark() {
  //   return ThemeData(
  //     colorScheme: ColorScheme.fromSeed(
  //       seedColor: Colors.green,
  //       brightness: Brightness.dark,
  //     ),
  //     appBarTheme: const AppBarTheme(
  //       titleTextStyle: TextStyle(
  //         color: Colors.white,
  //         fontSize: 19,
  //         fontWeight: FontWeight.bold,
  //       ),
  //       backgroundColor: Colors.black,
  //       elevation: 0,
  //     ),
  //     outlinedButtonTheme: OutlinedButtonThemeData(
  //       style: OutlinedButton.styleFrom(
  //         padding: const EdgeInsets.all(15),
  //       ),
  //     ),
  //     elevatedButtonTheme: ElevatedButtonThemeData(
  //       style: ElevatedButton.styleFrom(
  //         padding: const EdgeInsets.all(15),
  //       ),
  //     ),
  //     useMaterial3: true,
  //   );
  // }
}
