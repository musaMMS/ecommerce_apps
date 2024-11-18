import 'package:ecommerce_apps/Screen/HomeScreen.dart';
import 'package:ecommerce_apps/Screen/cart_screen.dart';
import 'package:ecommerce_apps/Screen/profile_screem.dart';
import 'package:ecommerce_apps/Screen/search_screen.dart';
import 'package:ecommerce_apps/sate_holder/botton_nav_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainBottomNavigationBar extends StatefulWidget {
  const MainBottomNavigationBar({
    super.key,
  });

  @override
  State<MainBottomNavigationBar> createState() => _MainBottomNavigationBarState();
}

class _MainBottomNavigationBarState extends State<MainBottomNavigationBar> {

 final BottomNavController _bottomNavController = Get.find<BottomNavController>();


 final List<Widget> _screens =
 [
   HomePage(),
   DiscoverPage(),
   MyOrdersScreen(),
   ProfileScreen(),

 ];

 @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomNavController>(builder: (context){
      return Scaffold(
        body: _screens[_bottomNavController.selectedIndex ?? 0],
        bottomNavigationBar: NavigationBar(
            selectedIndex: _bottomNavController.selectedIndex ?? 0,
            onDestinationSelected: _bottomNavController.changeIndex,
            destinations:const[
              NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
              NavigationDestination(icon: Icon(Icons.search_rounded), label: 'Search'),
              NavigationDestination(icon: Icon(Icons.shopping_cart), label: 'Cart'),
              NavigationDestination(icon: Icon(Icons.person_rounded), label: 'Profile'),
            ],
        ),
      );
    }
    );
  }
}