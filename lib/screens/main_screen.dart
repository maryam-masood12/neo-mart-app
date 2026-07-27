import 'package:flutter/material.dart';
import 'package:flutter_neo_mart/screens/home_screen.dart';
import 'package:flutter_neo_mart/screens/wish_list_screen.dart';
import 'package:flutter_neo_mart/screens/cart_screen.dart';
import 'package:flutter_neo_mart/screens/profile_screen.dart';
import 'package:flutter_neo_mart/widgets/custom_bottom_nav_bar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;

  final pages = const [
    HomeScreen(),
    WishListScreen(),
    CartScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],

      bottomNavigationBar: CustomBottomBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}