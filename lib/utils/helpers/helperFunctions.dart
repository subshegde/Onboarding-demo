import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class THelpers{
  static Size screenSize(){
    return MediaQuery.of(Get.context!).size;
  }

  static double screenHeight(){
    return MediaQuery.of(Get.context!).size.height;
  }

  static double screenWidth(){
    return MediaQuery.of(Get.context!).size.width;
  }

  static double getStatusBarHeight(){
    return MediaQuery.of(Get.context!).padding.top;
  }

  static double getAppBarHeight(){
    return kToolbarHeight;
  }

  static double getKeyBoardHeight(){
    return MediaQuery.of(Get.context!).viewInsets.bottom;
  }

  static double getBottomNavBarHeight(){
    return kBottomNavigationBarHeight;
  }
}