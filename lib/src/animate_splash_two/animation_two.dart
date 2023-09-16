import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:splachscreentype/src/animate_splash_two/animation_controller.dart';

class animationTwo extends StatelessWidget {
  animationTwo({super.key});

  final splashtwoController = Get.put(SplashTwoController());




  @override
  Widget build(BuildContext context) {
    print("build");
    splashtwoController.startAnimation();


    return Scaffold(
      body: SafeArea(
        child: Stack(

          children: [

            Obx(
            () => AnimatedPositioned(
                top: splashtwoController.animate.value ? 100 : -20,
                left: 100,
          duration: Duration(milliseconds: 1000),
                child: AnimatedOpacity(
                  opacity: splashtwoController.animate.value ? 1 : 0,
                  duration: Duration(milliseconds: 1600),
                  child: Text("Welcome to",
                    style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),
                ),
                   ),
            ),
            Obx(
            ()=> AnimatedPositioned(
                top: 140,
                  left: splashtwoController.animate.value ? 150 : -20,
                  child: AnimatedOpacity(
                    opacity: splashtwoController.animate.value ? 1: 0,
                      duration: Duration(milliseconds: 1600),
                      child: Text("GGU",style: TextStyle(fontSize: 30),)),
                  duration: Duration(milliseconds: 1000)),
            ),

            Obx(
    () => AnimatedPositioned(
                bottom: splashtwoController.animate.value ? 400 : -20,
                  left: 100,
                  child: AnimatedOpacity(
                    duration: Duration(milliseconds: 1600),
                      opacity: splashtwoController.animate.value ? 1 :0,
                      child: Image(image: AssetImage('assets/image/hard.png'),height: 200,width: 200,)),
                  duration: Duration(milliseconds: 1600)),
            ),

            Obx(
    ()=> AnimatedPositioned(
                bottom: 380,
                  left: splashtwoController.animate.value ? 140 : -20,
                  child: AnimatedOpacity(
                    opacity: splashtwoController.animate.value ? 1:0,
                      duration: Duration(milliseconds: 1600),
                      child: Image(image: AssetImage('assets/image/tree.png'),height: 150,width: 150,)) ,
                  duration: Duration(milliseconds: 1600)),
            )

          ],
        ),
      ),
    );
  }
}
