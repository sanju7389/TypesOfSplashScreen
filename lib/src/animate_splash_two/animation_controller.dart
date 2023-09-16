import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:splachscreentype/src/home/home.dart';

class SplashTwoController extends GetxController
{

  static SplashTwoController get find => Get.find();

  RxBool animate = false.obs;


  Future startAnimation()async{

    // for open full screen
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    await Future.delayed(Duration(milliseconds: 500));
    animate.value = true;
    await Future.delayed(Duration(milliseconds: 5000));
     // dispose a full screen and tower and time bar
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,overlays: SystemUiOverlay.values);
    Get.offAll(Home());

  }
}