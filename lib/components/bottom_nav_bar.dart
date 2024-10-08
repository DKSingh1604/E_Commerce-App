// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  MyBottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GNav(
        color: Colors.grey,
        // backgroundColor: Colors.white,
        tabActiveBorder: Border.all(color: Colors.white, width: 1),
        tabBackgroundColor: Colors.white,
        tabMargin: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
        tabBorderRadius: 30,
        mainAxisAlignment: MainAxisAlignment.center,
        onTabChange: (value) => onTabChange!(value),
        tabs: [
          GButton(
            icon: Icons.home,
            text: 'Shop',
          ),
          GButton(
            icon: Icons.trolley,
            text: 'Cart',
          ),
        ],
      ),
    );
  }
}
