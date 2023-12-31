import 'package:flutter/material.dart';

import 'package:js_bookstore/ui/screens/navigation/navigation.dart';
import 'package:js_bookstore/ui/screens/sign_in_screen/sign_in_screen.dart';
import 'package:js_bookstore/ui/screens/sign_up_screen/sign_up_screen.dart';
import 'package:js_bookstore/ui/screens/splash_screen/splash_screen.dart';
import 'package:js_bookstore/ui/screens/welcome_screen/welcome_screen.dart';

// Map of routes
var customAppRoutes = <String, WidgetBuilder>{
  //Splash screen
  '/splash': (context) => SplashScreen(),
  //Welcome screen
  '/welcome': (context) => WelcomeScreen(),
  //Sign up screen
  '/signup': (context) => SignUpScreen(),
  //Sign in screen
  '/signin': (context) => SignInScreen(),
  //Home screen
  '/': (context) => Navigation(),
};
