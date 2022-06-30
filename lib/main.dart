import 'package:bmi_calculator/screens/input_page.dart';
import 'package:bmi_calculator/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData.dark().copyWith(
      primaryColor: const Color(0xFF0A0E21),
      scaffoldBackgroundColor:const Color(0xFF0A0E21),
      appBarTheme:const  AppBarTheme(
        color:  Color(0xFF0A0E21)
      )
    ),
    home: SplashScreen(),

  ));
}