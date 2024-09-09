import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common/color_extentions.dart';
import '../../common_widget/tetx_icon.dart';
import '../../view_model/splash_controller.dart';
import '../home_view/home_view.dart';
import '../setting/setting_view.dart';
import '../song/song.dart';


class MainTabView extends StatefulWidget {
  const MainTabView({super.key});

  @override
  State<MainTabView> createState() => _MainTabViewState();
}

class _MainTabViewState extends State<MainTabView>
    with SingleTickerProviderStateMixin {
  TabController? controller;
  int selectTab = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = TabController(length: 3, vsync: this);

    controller?.addListener(() {
      selectTab = controller?.index ?? 0;
      setState(() {});
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);

    var splashVM = Get.find<SplashViewMode>();

    return Scaffold(
      key: splashVM.scaffoldKey,
      drawer: Drawer(
          backgroundColor: const Color(0xff10121D),
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              SizedBox(
                height: 240,
                child: DrawerHeader(
                  decoration: BoxDecoration(
                    color: TColor.primaryText.withOpacity(0.03),
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/img/app_logo.png",
                        width: media.width * 0.17,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Text(
                                "328\nSongs",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Color(0xffC1C0C0), fontSize: 12),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                "52\nAlbums",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Color(0xffC1C0C0), fontSize: 12),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                "87\nArtists",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Color(0xffC1C0C0), fontSize: 12),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              IconTextRow(
                title: "Themes",
                icon: "assets/img/m_theme.png",
                onTap: () {},
              ),
              IconTextRow(
                title: "Ringtone Cutter",
                icon: "assets/img/m_ring_cut.png",
                onTap: () {},
              ),

              IconTextRow(
                title: "Sleep Timer",
                icon: "assets/img/m_sleep_timer.png",
                onTap: () {},
              ),
              IconTextRow(
                title: "Equalizer",
                icon: "assets/img/m_eq.png",
                onTap: () {},
              ),
              IconTextRow(
                title: "Driver Mode",
                icon: "assets/img/m_driver_mode.png",
                onTap: () {},
              ),

              IconTextRow(
                title: "Hidden Folders",
                icon: "assets/img/m_hidden_folder.png",
                onTap: () {},
              ),
              IconTextRow(
                title: "Scan Media",
                icon: "assets/img/m_scan_media.png",
                onTap: () {},
              ),
            ],
          )),
      body:  Stack(
        alignment: Alignment.bottomCenter,
        children: [
          TabBarView(
            controller: controller,
            children:const [
               HomeView(),
               SongsView(),
              SettingsView(),
            ],
          ),

         // MiniPlayerView(),

        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(color: TColor.bg, boxShadow: const [
          BoxShadow(
            color: Colors.black38,
            blurRadius: 5,
            offset: Offset(0, -3),
          )
        ]),
        child: BottomAppBar(
            color: Colors.transparent,
            elevation: 0,
            child: TabBar(
              controller: controller,
              indicatorColor: Colors.transparent,
              indicatorWeight: 1,
              labelColor: TColor.primary,
              labelStyle: const TextStyle(fontSize: 10),
              unselectedLabelColor: TColor.primaryText28,
              unselectedLabelStyle: const TextStyle(fontSize: 10),
              tabs: [
                Tab(
                  text: "Home",
                  icon: Image.asset(
                    selectTab == 0
                        ? "assets/img/home_tab.png"
                        : "assets/img/home_tab_un.png",
                    width: 20,
                    height: 20,
                  ),
                ),
                Tab(
                  text: "Songs",
                  icon: Image.asset(
                    selectTab == 1
                        ? "assets/img/songs_tab.png"
                        : "assets/img/songs_tab_un.png",
                    width: 20,
                    height: 20,
                  ),
                ),
                Tab(
                  text: "Settings",
                  icon: Image.asset(
                    selectTab == 2
                        ? "assets/img/songs_tab.png"
                        : "assets/img/setting_tab_un.png",
                    width: 20,
                    height: 20,
                  ),
                )
              ],
            )),
      ),
    );
  }
}