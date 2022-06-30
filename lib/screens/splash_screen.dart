import 'package:bmi_calculator/constance.dart';
import 'package:bmi_calculator/screens/input_page.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      backgroundColor: kActiveColor,
      splash: Center(
        child: Text(
          'bmi calculator'.toUpperCase(),
          style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      nextScreen: InputPage(),
      splashTransition: SplashTransition.scaleTransition,
      duration: 2000,
    );
  }
}
