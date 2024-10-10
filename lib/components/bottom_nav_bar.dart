// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
  final void Function(int)? onTabChange; // Made it final for immutability
  const MyBottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return GNav(
      color: Colors.grey[700],
      // backgroundColor: Colors.white,
      tabActiveBorder: Border.all(color: Colors.white, width: 1),
      tabBackgroundColor: Colors.white,
      tabMargin: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
      tabBorderRadius: 30,
      gap: 8,
      mainAxisAlignment: MainAxisAlignment.center,
      onTabChange: onTabChange, // Directly pass the callback
      tabs: [
        GButton(
          icon: Icons.home,
          text: 'Shop',
        ),
        GButton(
          icon: Icons.shopping_cart, // Corrected icon
          text: 'Cart',
        ),
      ],
    );
  }
}
