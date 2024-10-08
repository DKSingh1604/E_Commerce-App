import 'package:e_commmerce/components/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //this selected index is to control the bottom navigation bar
  int _selectedIndex = 0;

  //this method will update out selected index when th user taps on the bar
  void navigationBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  //pages to disply
  // final List<Widget> _pages = [
  //   //shop page
  //   const ShopPage(),

  //   const CartPage(),

  // ]

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 70, 186, 224),
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigationBottomBar(index),
      ),
    );
  }
}
