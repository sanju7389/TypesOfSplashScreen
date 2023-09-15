import 'package:flutter/material.dart';
import 'package:splachscreentype/src/home/home.dart';

class AnimateionSplash extends StatefulWidget {
  const AnimateionSplash({super.key});

  @override
  State<AnimateionSplash> createState() => _AnimateionSplashState();
}

class _AnimateionSplashState extends State<AnimateionSplash> {

  bool animate = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    startAnimation();

  }

  // for controller animation

  Future startAnimation()async{

    await Future.delayed(Duration(milliseconds: 500));
    setState(() {
      animate = true;
    });
    await Future.delayed(Duration(milliseconds: 5000),(){

      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Home()));
    });

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Stack(
          children: [

            AnimatedPositioned(
              top: animate ? 100 : -100 ,
              left: animate ? 100 : -110,
              duration: Duration(milliseconds: 1600),
              child: Text("Welcome",style: TextStyle(fontSize: 40),),),


            AnimatedPositioned(
                top: 150,
                left: animate ? 150 : -10,

                child: AnimatedOpacity(
                    duration: Duration(milliseconds: 2000),
                    opacity: animate ? 1 :0,
                    child: Text("Back",style: TextStyle(fontSize: 34),)),
                duration: Duration(milliseconds: 1600)),

            AnimatedPositioned(
              bottom: animate ? 300: -50,
                left: 80,
                duration: Duration(milliseconds: 1600),
                child: Image(image: AssetImage('assets/image/Humidity.png'),
                  height: 300,width: 300,))
          ],
        ),
      ),
    );
  }
}
