import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common_widget/all_song.dart';
import '../../view_model/all_song_controller.dart';


class AllSongsView extends StatefulWidget {
  const AllSongsView({super.key});

  @override
  State<AllSongsView> createState() => _AllSongsViewState();
}

class _AllSongsViewState extends State<AllSongsView> {
  final allVM = Get.put(AllSongsViewModel());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
            () => ListView.builder(
            padding: const EdgeInsets.all(20),
            itemCount: allVM.allList.length,
            itemBuilder: (context, index) {
              var sObj = allVM.allList[index];

              return AllSongRow(
                sObj: sObj,
                isWeb: true,
                onPressed: () {},
                onPressedPlay: () {
                  // Get.to(() => const MainPlayerView());

                  // playerPlayProcessDebounce( allVM.allList.map((sObj) => {
                  //   'id': sObj["id"].toString(),
                  //   'title': sObj["name"].toString(),
                  //   'artist': sObj["artists"].toString(),
                  //   'album': sObj["album"].toString(),
                  //   'genre': sObj["language"].toString(),
                  //
                  //   'image': sObj["image"].toString(),
                  //   'url': sObj["downloadUrl"].toString(),
                  //   'user_id': sObj["artistsId"].toString(),
                  //   'user_name': sObj["artists"].toString(),
                  // } ).toList() , index);
                },
              );
            }),
      ),
    );
  }
}