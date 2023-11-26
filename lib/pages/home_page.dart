import 'package:flutter/material.dart';
import 'package:nftapp/components/my_appbar.dart';
import 'package:nftapp/components/my_bottombar.dart';
import 'package:nftapp/tabs/recent_tab.dart';
import 'package:nftapp/tabs/top_tab.dart';
import 'package:nftapp/tabs/trending_tab.dart';
import 'package:nftapp/widgets/glassbox.dart';

import '../components/my_tabbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void searchButtonTapped() {}

  List tabOptions = const [
    ["Recent", RecentTab()],
    ["Trending", TrendingTab()],
    ["Top", TopTab()],
  ];

  int currentBottomNavIndex = 0;
  void handleBottomNavIndexChange(int? index) {
    setState(() {
      currentBottomNavIndex = index!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabOptions.length,
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        extendBody: true,
        bottomNavigationBar: GlassBox(
          child: MyBottomBar(
            index: currentBottomNavIndex,
            onTap: handleBottomNavIndexChange,
          ),
        ),
        body: ListView(
          children: [
            MyAppBar(
              title: 'Explore Collections',
              onSearchTap: searchButtonTapped,
            ),
            SizedBox(
              height: 600,
              child: MyTabBar(
                tabOptions: tabOptions,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
