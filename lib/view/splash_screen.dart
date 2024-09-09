import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:musicplayer/view/main_bottom/main_bottom_bar.dart';

import '../view_model/splash_controller.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();

}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                MainTabView(),
            )
        )
    );
  }

  // final  splashVM=Get.put(SplashViewMode());
  //
  //
  // @override
  // void initState() {
  //   SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);
  //   super.initState();
  //   splashVM.loadView;
  // }
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Scaffold(

      body: Center(
        child: Image.asset("assets/img/app_logo.png", width: media.width * 0.30, ),
      ),
    );
  }
}
