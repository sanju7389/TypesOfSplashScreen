import 'package:flutter/material.dart';
import 'package:splachscreentype/src/splash_two/splashscreen_two.dart';
import 'package:splachscreentype/src/splashscren_one/splash_one.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SplashScreenTwo()
      //SplashScreenOne(),
    );
  }
}

