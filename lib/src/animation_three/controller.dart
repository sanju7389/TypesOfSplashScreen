import 'package:get/get.dart';
import 'package:splachscreentype/src/home/home.dart';

class ThreeController extends GetxController{

  static ThreeController get find => Get.find();

  RxBool aniThree = false.obs;

  Future threeSatrt ()async{

    await Future.delayed(Duration(milliseconds: 500));
    aniThree.value = true;
    await Future.delayed(Duration(milliseconds: 5000));
    Get.offAll(Home());
  }
}