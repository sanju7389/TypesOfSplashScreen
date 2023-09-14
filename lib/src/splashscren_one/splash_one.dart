import 'dart:async';

import 'package:flutter/material.dart';
import 'package:splachscreentype/src/home/home.dart';

class SplashScreenOne extends StatefulWidget {

  const SplashScreenOne({super.key});

  @override
  State<SplashScreenOne> createState() => _SplashScreenOneState();
}

class _SplashScreenOneState extends State<SplashScreenOne> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(Duration(seconds: 5),(){

      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Home()));
    });


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image(image: AssetImage('assets/image/google.png'),height: 100,width: 100,),
      ),
    );
  }
}
