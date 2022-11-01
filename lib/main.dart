import 'package:flutter/material.dart';

import 'package:app_flutterando/pages/home_page.dart';
import 'package:app_flutterando/pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "App Fluterrando",
      initialRoute: '/splash',
      routes: {
        '/splash': (_) => const SplashPage(),
        '/homepage': (_) => const HomePage(),
      },
    );
  }
}
