import 'package:e_commerce_shop_page/shop.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'cart.dart';
import 'profile.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({super.key});

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  int _selectedIndex = 0;
  final List _pages = [
    Shop(),
    const Text('Search'),
    CartScreen(),
    ProfileShow(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: _pages[_selectedIndex],
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
              boxShadow: [
                BoxShadow(
                  blurRadius: 20,
                  color: Colors.black.withOpacity(.5),
                  spreadRadius: 5,
                )
              ]),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
            child: GNav(
                backgroundColor: Colors.white,
                color: Colors.black,
                // haptic: true,
                // rippleColor: const Color.fromARGB(255, 66, 66, 66),
                // hoverColor: const Color.fromRGBO(97, 97, 97, 1),
                tabBorderRadius: 50,
                tabActiveBorder: Border.all(color: Colors.black, width: 1),
                // tabShadow: [
                //   BoxShadow(
                //     color: Colors.grey.withOpacity(0.5),
                //     blurRadius: 8,
                //   )
                // ],
                // duration: const Duration(milliseconds: 800),
                gap: 8,
                activeColor: Colors.black,
                // iconSize: 24,
                padding: const EdgeInsets.all(16),
                tabBackgroundColor: Colors.white,
                tabs: const [
                  GButton(
                    icon: Icons.home,
                    text: 'Home',
                  ),
                  GButton(
                    icon: Icons.search,
                    text: 'Search',
                  ),
                  GButton(
                    icon: Icons.shopping_cart,
                    text: 'Cart',
                  ),
                  GButton(
                    icon: Icons.person,
                    text: 'Profile',
                  ),
                ],
                selectedIndex: _selectedIndex,
                onTabChange: (index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                }),
          ),
        ));
  }
}
