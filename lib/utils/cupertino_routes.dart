import 'package:flutter/material.dart';
import 'package:mnt_so/pages/home_page.dart';
import 'package:mnt_so/screens/dash_board_screen.dart';
import 'package:mnt_so/screens/help_desk_screen.dart';
import 'package:mnt_so/screens/profile_screen.dart';
import 'package:mnt_so/screens/setting_screen.dart';
import 'package:mnt_so/utils/page_name.dart';
import 'package:routemaster/routemaster.dart';

final routes = RouteMap(
  routes: {
    // ignore: prefer_const_constructors
    '/': (_) => CupertinoTabPage(
          child: const DashBoardScreen(),
          // ignore: prefer_const_literals_to_create_immutables
          paths: [
            PageNameConstants.homePage,
            PageNameConstants.settingPage,
            PageNameConstants.helpDeskPage,
            PageNameConstants.profilePage
          ],
        ),
    '/' + PageNameConstants.homePage: (_) =>
        const MaterialPage(child: HomePage()),
    '/' + PageNameConstants.settingPage: (_) =>
        const MaterialPage(child: SettingScreen()),
    '/' + PageNameConstants.helpDeskPage: (_) =>
        const MaterialPage(child: HelpDeskScreen()),
    '/' + PageNameConstants.profilePage: (_) =>
        const MaterialPage(child: ProfileScreen())
  },
);
