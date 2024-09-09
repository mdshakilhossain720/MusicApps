import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common_widget/my_play_list.dart';
import '../../common_widget/play_list_song_ceel.dart';
import '../../common_widget/view_all_section.dart';
import '../../view_model/play_list_controller.dart';


class PlaylistsView extends StatefulWidget {
  const PlaylistsView({super.key});

  @override
  State<PlaylistsView> createState() => _PlaylistsViewState();
}

class _PlaylistsViewState extends State<PlaylistsView> {
  final plVM = Get.put(PlaylistsViewModel());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff23273B),
        onPressed: () {},
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Image.asset("assets/img/add.png"),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Obx(
                  () => GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: const EdgeInsets.symmetric(vertical: 20),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1.4,
                  crossAxisSpacing: 0,
                  mainAxisSpacing: 0,
                ),
                itemCount: plVM.playlistArr.length,
                itemBuilder: (context, index) {
                  var pObj = plVM.playlistArr[index];
                  return PlaylistSongsCell(
                    pObj: pObj,
                    onPressed: () {},
                    onPressedPlay: () {},
                  );
                },
              ),
            ),
            ViewAllSection(title: "My Playlists", onPressed: () {}),
            SizedBox(
              height: 150,
              child: Obx(
                    () => ListView.builder(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    itemCount: plVM.myPlaylistArr.length,
                    itemBuilder: (context, index) {
                      var pObj = plVM.myPlaylistArr[index];

                      return MyPlaylistCell(
                        pObj: pObj,
                        onPressed: () {},
                      );
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}