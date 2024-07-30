import 'package:provider_app_orientation/UI/Settings/settingspage.dart';
import 'package:provider_app_orientation/UI/auth/profile.dart';
import 'package:provider_app_orientation/UI/homepage.dart';
import 'package:provider_app_orientation/UI/my_wallet/mywallet.dart';
import 'package:provider_app_orientation/UI/search/searchpage.dart';
import 'package:provider_app_orientation/common/exports.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import 'package:flutter/material.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    HomePage(),
    SearchPage(),
    MyWalletPage(),
    ProfilePage(),
    SettingsPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    double? iconsize;
    double? headersize;
    double sWidth = MediaQuery.of(context).size.width;
    bool isMobile(BuildContext context) =>
        MediaQuery.of(context).size.shortestSide <= 500;
    Orientation orientaion = MediaQuery.of(context).orientation;
    bool isPortrait = orientaion == Orientation.portrait;
    if (isMobile(context)) {
      if (orientaion == Orientation.portrait) {
        iconsize = sWidth * 0.06;
        headersize = 16;
      } else {
        iconsize = sWidth * 0.035;
        headersize = 14;
      }
    } else {
      if (orientaion == Orientation.portrait) {
        iconsize = sWidth * 0.05;
        headersize = 16;
      } else {
        headersize = 15;
        iconsize = sWidth * 0.035;
      }
    }

    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
      bottomNavigationBar: CurvedNavigationBar(
        items: [
          Icon(
            Icons.home,
            size: iconsize,
            color: Color(kDarkGrey.value),
          ),
          Icon(
            Icons.search,
            size: iconsize,
            color: Color(kDarkGrey.value),
          ),
          Icon(
            Icons.monetization_on_outlined,
            size: iconsize,
            color: Color(kDarkGrey.value),
          ),
          Icon(
            Icons.person_2,
            size: iconsize,
            color: Color(kDarkGrey.value),
          ),
          Icon(
            Icons.more_vert,
            size: iconsize,
          ),
        ],
        backgroundColor: Colors.transparent,
        index: _selectedIndex,
        color: Color.fromRGBO(255, 250, 250, 1),
        buttonBackgroundColor: const Color.fromRGBO(255, 250, 250, 1),
        onTap: _onItemTapped,
      ),
    );
  }
}
