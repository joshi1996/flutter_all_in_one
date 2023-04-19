import 'package:flutter/material.dart';
import 'package:mnt_so/pages/home_page.dart';
import 'package:mnt_so/utils/colors.dart';
import 'package:mnt_so/utils/fonts/app_font.dart';
import 'package:mnt_so/utils/fonts/app_font_weight.dart';
import 'package:motion_tab_bar_v2/motion-tab-bar.dart';

class MntSoBottomNavigation extends StatefulWidget {
  const MntSoBottomNavigation({Key? key}) : super(key: key);

  @override
  _MntSoBottomNavigationState createState() => _MntSoBottomNavigationState();
}

class _MntSoBottomNavigationState extends State<MntSoBottomNavigation> with TickerProviderStateMixin{

  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      initialIndex: 0,
      length: 4,
      vsync: this,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _tabController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MotionTabBar(
        initialSelectedTab: "Dashboard",
        useSafeArea: true, // default: true, apply safe area wrapper
        labels: const ["Dashboard", "Settings", "Profile", "BWC Winner Circle"],
        icons: const [Icons.dashboard_customize, Icons.settings_outlined, Icons.person, Icons.bar_chart_sharp],
        tabSize: 50,
        tabBarHeight: 50,
        textStyle: TextStyle(
          fontSize: AppFont.m6,
          color: AppColor.primaryColor,
          fontWeight: AppFontWeight.weight600
        ),
        tabIconColor: Colors.grey.shade400,
        tabIconSize: 28.0,
        tabIconSelectedSize: 26.0,
        tabSelectedColor: AppColor.bottomNavigationColor,
        tabIconSelectedColor: AppColor.primaryColor,
        tabBarColor: AppColor.bottomNavigationColor,
        onTabItemSelected: (int value) {
          setState(() {
            _tabController!.index = value;
          });
        },
      ),
      body: TabBarView(
        physics: const NeverScrollableScrollPhysics(), // swipe navigation handling is not supported
        controller: _tabController,
        // ignore: prefer_const_literals_to_create_immutables
        children: <Widget>[
          const HomePage(),
          const Center(
            child: Text("Home"),
          ),
          const Center(
            child: Text("Profile"),
          ),
          const Center(
            child: Text("Settings"),
          ),
        ],
      ),
    );
  }
}
