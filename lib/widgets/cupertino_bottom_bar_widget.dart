import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mnt_so/utils/page_name.dart';
import 'package:routemaster/routemaster.dart';

class CupertinoBottomBar extends StatefulWidget {
  const CupertinoBottomBar({Key? key}) : super(key: key);

  @override
  State<CupertinoBottomBar> createState() => _CupertinoBottomBarState();
}

class _CupertinoBottomBarState extends State<CupertinoBottomBar> {
  @override
  Widget build(BuildContext context) {
    final tabState = CupertinoTabPage.of(context);

    return CupertinoTabScaffold(
      controller: tabState.controller,
      tabBuilder: tabState.tabBuilder,
      tabBar: CupertinoTabBar(
        // ignore: prefer_const_literals_to_create_immutables
        items: const [
          BottomNavigationBarItem(
            label: PageNameConstants.homePage,
            icon: Icon(CupertinoIcons.home),
          ),
          BottomNavigationBarItem(
            label: PageNameConstants.settingPage,
            icon: Icon(CupertinoIcons.settings),
          ),
          BottomNavigationBarItem(
            label: PageNameConstants.helpDeskPage,
            icon: Icon(CupertinoIcons.headphones),
          ),
          BottomNavigationBarItem(
            label: PageNameConstants.profilePage,
            icon: Icon(CupertinoIcons.person_fill),
          ),
        ],
      ),
    );
  }
}
