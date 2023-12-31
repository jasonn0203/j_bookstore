import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:js_bookstore/core/routes.dart';
import 'package:js_bookstore/themes/theme.dart';

void main() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //Routes of all screen
      initialRoute: '/',
      routes: customAppRoutes,

      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'JS Bookstore',
      theme: CustomTheme.lightTheme,
      darkTheme: ThemeData.dark(),
    );
  }
}
