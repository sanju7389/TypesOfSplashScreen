import 'package:flutter/material.dart';
import 'package:splachscreentype/src/home/home.dart';

class SplashScreenTwo extends StatefulWidget {
  const SplashScreenTwo({super.key});

  @override
  State<SplashScreenTwo> createState() => _SplashScreenTwoState();
}

class _SplashScreenTwoState extends State<SplashScreenTwo> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _navigetHome();

  }

  _navigetHome()async{

    await Future.delayed(Duration(milliseconds: 1500),(){});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Home()));

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Image(image: AssetImage('assets/image/whatapps.png'),height: 120,width: 120,),),
    );
  }
}
