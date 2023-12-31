import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:js_bookstore/core/colors.dart';
import 'package:js_bookstore/ui/screens/cart_screen/cart_screen.dart';
import 'package:js_bookstore/ui/screens/category_screen/category_screen.dart';
import 'package:js_bookstore/ui/screens/home_screen/home_screen.dart';
import 'package:js_bookstore/ui/screens/profile_screen/profile_screen.dart';

class Navigation extends StatefulWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int currentPageIndex = 0;
  List<Widget> screens = [
    HomeScreen(),
    CategoryScreen(),
    CartScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentPageIndex],
      bottomNavigationBar: NavigationBar(
        elevation: 0,
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: AppColor.primaryColor,
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(
              Iconsax.home,
              color: Colors.white,
            ),
            icon: Icon(Iconsax.home),
            label: 'Home',
          ),
          NavigationDestination(
            selectedIcon: Icon(
              Iconsax.category,
              color: Colors.white,
            ),
            icon: Icon(Iconsax.category),
            label: 'Categories',
          ),
          NavigationDestination(
            selectedIcon: Icon(
              Iconsax.shopping_cart,
              color: Colors.white,
            ),
            icon: Icon(Iconsax.shopping_cart),
            label: 'Cart',
          ),
          NavigationDestination(
            selectedIcon: Icon(
              Iconsax.profile_circle,
              color: Colors.white,
            ),
            icon: Icon(Iconsax.profile_circle),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
