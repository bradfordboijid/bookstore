import 'package:bookstore/core/values/app_colors.dart';
import 'package:bookstore/presentation/screens/tab_cart.dart';
import 'package:bookstore/presentation/screens/tab_categories.dart';
import 'package:bookstore/presentation/screens/tab_home.dart';
import 'package:bookstore/presentation/screens/tab_profile.dart';
import 'package:flutter/material.dart' hide CarouselController;
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "HomeScreen";

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Widget> _pages = [
    const HomeScreenTab(),
    const CategoriesScreenTab(),
    const CartScreenTab(),
    const ProfileScreenTab(),
  ];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors().white,
      bottomNavigationBar: SizedBox(
        height: 80.h,
        child: BottomNavigationBar(
          backgroundColor: AppColors().bottomNavBar,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Container(
                decoration: _selectedIndex == 0
                    ? BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: AppColors().inkColor,
                      )
                    : null,
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 16),
                child: const Icon(Icons.home),
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Container(
                  decoration: _selectedIndex == 1
                      ? BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: AppColors().inkColor,
                        )
                      : null,
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 16),
                  child: const Icon(Icons.category)),
              label: 'Categories',
            ),
            BottomNavigationBarItem(
              icon: Container(
                  decoration: _selectedIndex == 2
                      ? BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: AppColors().inkColor,
                        )
                      : null,
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 16),
                  child: const Icon(Icons.shopping_cart)),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Container(
                  decoration: _selectedIndex == 3
                      ? BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: AppColors().inkColor,
                        )
                      : null,
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 16),
                  child: const Icon(Icons.account_box)),
              label: 'Account',
            ),
          ],
          currentIndex: _selectedIndex, //New
          onTap: _onItemTapped,
          selectedIconTheme: IconThemeData(color: AppColors().white),
          selectedItemColor: AppColors().inkColor,
          unselectedItemColor: AppColors().inkColor,
          selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w700),
          showUnselectedLabels: true,
          showSelectedLabels: true,
          type: BottomNavigationBarType.fixed,
        ),
      ),
      body: _pages.elementAt(_selectedIndex),
    );
  }
}
