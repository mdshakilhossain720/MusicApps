import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:musicplayer/bindings.dart';
import 'package:musicplayer/view/main_bottom/main_bottom_bar.dart';
import 'package:musicplayer/view/splash_screen.dart';

import 'common/color_extentions.dart';
import 'view/home_view/home_view.dart';
import 'view/song/song.dart';
import 'view_model/home_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: bidings(),
      title: 'Music Player',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Circular Std",
        scaffoldBackgroundColor: TColor.bg,
        textTheme: Theme.of(context).textTheme.apply(
          bodyColor: TColor.primaryText,
          displayColor: TColor.primaryText,
        ),
        colorScheme: ColorScheme.fromSeed(
          seedColor: TColor.primary,
        ),
        useMaterial3: false,
      ),
      home:MainTabView(),
    );



  }
}

