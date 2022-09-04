import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:play_app_store/globals.dart';
import 'package:play_app_store/screens/foryou_page.dart';
import 'package:play_app_store/screens/ios_apps.dart';
import 'package:play_app_store/screens/ios_games.dart';
import 'package:play_app_store/screens/ios_search.dart';
import 'package:play_app_store/screens/ios_today.dart';
import 'package:play_app_store/screens/ios_updates.dart';
import 'package:play_app_store/screens/topchart_page.dart';

void main() {
  runApp(
    const PlayStore(),
  );
}

class PlayStore extends StatefulWidget {
  const PlayStore({Key? key}) : super(key: key);

  @override
  State<PlayStore> createState() => _PlayStoreState();
}

class _PlayStoreState extends State<PlayStore>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  final List<Widget> _tabs = [
    const IosToday(),
    const IosGames(),
    const IosApps(),
    const IosUpdates(),
    const IosSearch(),
  ];

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return (Global.isIOS == false)
        ? MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.white,
                elevation: 0,
                title: Container(
                  height: 30,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.grey,
                          spreadRadius: 1,
                          blurRadius: 3,
                          offset: Offset(0, 2))
                    ],
                  ),
                  child: Row(
                    children: const [
                      SizedBox(width: 10),
                      Icon(
                        Icons.menu,
                        color: Colors.black,
                      ),
                      SizedBox(width: 15),
                      Text(
                        "Search for apps & games",
                        style: TextStyle(fontSize: 13, color: Colors.grey),
                      ),
                      Spacer(),
                      Icon(
                        Icons.mic,
                        color: Colors.black,
                      ),
                      SizedBox(width: 10),
                    ],
                  ),
                ),
                bottom: TabBar(
                  controller: tabController,
                  indicatorColor: Colors.green,
                  unselectedLabelColor: Colors.black,
                  labelColor: Colors.green,
                  isScrollable: true,
                  indicatorWeight: 5,
                  tabs: const [
                    Tab(text: "For you"),
                    Tab(text: "Top charts"),
                    Tab(text: "Categories"),
                    Tab(text: "Editor' Choice"),
                  ],
                ),
              ),
              body: TabBarView(
                controller: tabController,
                children: [
                  const ForyouPage(),
                  const TopchartPage(),
                  Container(
                    color: Colors.deepPurple,
                  ),
                  Container(
                    color: Colors.orangeAccent,
                  ),
                ],
              ),
            ),
          )
        : CupertinoApp(
            debugShowCheckedModeBanner: false,
            home: CupertinoPageScaffold(
                child: CupertinoTabScaffold(
                    tabBar: CupertinoTabBar(
                      items: const [
                        BottomNavigationBarItem(
                            icon: Icon(CupertinoIcons.today), label: 'Today'),
                        BottomNavigationBarItem(
                            icon: Icon(CupertinoIcons.game_controller_solid),
                            label: 'Games'),
                        BottomNavigationBarItem(
                            icon: Icon(CupertinoIcons.layers_alt_fill),
                            label: 'Apps'),
                        BottomNavigationBarItem(
                            icon: Icon(CupertinoIcons.square_arrow_down_fill),
                            label: 'Updates'),
                        BottomNavigationBarItem(
                            icon: Icon(CupertinoIcons.search), label: 'Search'),
                      ],
                    ),
                    tabBuilder: (BuildContext context, index) {
                      return CupertinoTabView(
                        builder: (BuildContext context) {
                          return _tabs[index];
                        },
                      );
                    })),
          );
  }
}
