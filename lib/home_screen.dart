import 'package:evently/app_theme.dart';
import 'package:evently/home/home_tab.dart';
import 'package:evently/love/love_tab.dart';
import 'package:evently/map/map_tab.dart';
import 'package:evently/profile/profile_tab.dart';
import 'package:evently/widgets/nav_bar_icon.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = "/home";
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  List<Widget> tabs = [
    HomeTab(),
    MapTab(),
    LoveTab(),
    ProfileTab(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: CircularNotchedRectangle(),
        notchMargin: 0,
        elevation: 0,
        padding: EdgeInsets.zero,
        color: Theme.of(context).primaryColor,
        child: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (value) {
            currentIndex = value;
            setState(() {});
          },
          elevation: 0,
          unselectedFontSize: 12,
          selectedFontSize: 12,
          items: [
            BottomNavigationBarItem(
              icon: NavBarIcon(imageName: "home_unselected"),
              activeIcon: NavBarIcon(imageName: "home_selected"),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: NavBarIcon(imageName: "map_unselected"),
              activeIcon: NavBarIcon(imageName: "map_selected"),
              label: "Map",
            ),
            BottomNavigationBarItem(
              icon: NavBarIcon(imageName: "love_unselected"),
              activeIcon: NavBarIcon(imageName: "love_selected"),
              label: "Love",
            ),
            BottomNavigationBarItem(
              icon: NavBarIcon(imageName: "user_unselected"),
              activeIcon: NavBarIcon(imageName: "user_selected"),
              label: "Profile",
            ),
          ],
        ),
      ),
      body: tabs[currentIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add,
          size: 40,
          color: AppTheme.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
