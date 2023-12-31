import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:js_bookstore/core/image_helper.dart';
import 'package:js_bookstore/ui/screens/welcome_screen/welcome_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AnimatedSplashScreen(
      splash: ImageHelper.logo,
      duration: 500,
      nextScreen: const WelcomeScreen(),
      splashTransition: SplashTransition.scaleTransition,
    ));
  }
}
