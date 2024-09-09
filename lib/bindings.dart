import 'package:get/get.dart';
import 'package:musicplayer/view_model/splash_controller.dart';

import 'view_model/home_controller.dart';

class bidings extends  Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(SplashViewMode());
    Get.put(HomeViewModel());

  }

}