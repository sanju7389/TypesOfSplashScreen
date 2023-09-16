import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:splachscreentype/src/animation_three/controller.dart';

class ThreeSplash extends StatelessWidget {
  ThreeSplash({super.key});

  final threeController = Get.put(ThreeController());

  @override
  Widget build(BuildContext context) {
    threeController.threeSatrt();
    return Scaffold(

      body: Stack(
        children: [
          Obx(
          ()=> AnimatedPositioned(
                  top: 100,
                left: threeController.aniThree.value ? 100 : 0,
                child: Text("Hello Manish",style: TextStyle(fontSize: 30),),
                duration: Duration(milliseconds: 1600)),
          )
        ],
      ),

    );
  }
}
