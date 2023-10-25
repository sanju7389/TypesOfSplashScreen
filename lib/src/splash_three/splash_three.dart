import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:splachscreentype/src/home/home.dart';

class SplashThree extends StatefulWidget {
  const SplashThree({super.key});

  @override
  State<SplashThree> createState() => _SplashThreeState();
}

class _SplashThreeState extends State<SplashThree> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    // for open full screen
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    Future.delayed(Duration(seconds: 5),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Home()));
    });
  }

  // for of a full screen servisers
  @override
  void dispose() {
    // TODO: implement dispose
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,overlays: SystemUiOverlay.values);

    super.dispose();
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [
          Text("demo git code"),
          Text("ok done"),
          Center(
            child: Image(image: AssetImage('assets/image/forgetpassword.png'),),
          ),
        ],
      ),


    );
  }
}
