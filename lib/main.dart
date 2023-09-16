import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:splachscreentype/src/animate_splash_two/animation_two.dart';
import 'package:splachscreentype/src/animation_splashscreen/animation_splash.dart';
import 'package:splachscreentype/src/animation_three/animation_three.dart';
import 'package:splachscreentype/src/splash_three/splash_three.dart';
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
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ThreeSplash()
      //animationTwo()
      //AnimateionSplash()
      //SplashThree()
      //SplashScreenTwo()
      //SplashScreenOne(),
    );
  }
}

