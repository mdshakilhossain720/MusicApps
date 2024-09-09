


import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../view/main_bottom/main_bottom_bar.dart';


class SplashViewMode extends GetxController {

  var scaffoldKey = GlobalKey<ScaffoldState>();

  void loadView() async {
    await Future.delayed(const Duration(seconds: 3) );
    Get.to( () => const MainTabView());
  }

  void openDrawer(){
    scaffoldKey.currentState?.openDrawer();
  }

  void closeDrawer(){
    scaffoldKey.currentState?.closeDrawer();
  }
}