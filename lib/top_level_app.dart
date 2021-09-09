import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_book_store_app/screens/catalog/catalog_screen.dart';
import 'package:online_book_store_app/screens/home/home_screen.dart';
import 'package:online_book_store_app/screens/library/library_screen.dart';

class TopLevelApp extends StatefulWidget {
  const TopLevelApp({Key? key}) : super(key: key);

  @override
  State<TopLevelApp> createState() => _TopLevelAppState();
}

class _TopLevelAppState extends State<TopLevelApp> {
  static int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    PageController _pageController = PageController();
    List<Widget> _screens = const [
      HomeScreen(),
      CatalogScreen(),
      LibraryScreen()
    ];

    void _onSelectedItem(int index) {
      _pageController.jumpToPage(index);
    }

    void onPageChanged(int index) {
      setState(() {
        _selectedIndex = index;
      });
    }

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        showUnselectedLabels: true,
        currentIndex: _selectedIndex,
        //selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
        // backgroundColor: Colors.black.withOpacity(0.1),
        onTap: _onSelectedItem,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book_outlined),
            label: 'Catalog',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book_outlined),
            label: 'My Library',
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.sports_basketball_outlined),
          //   label: 'Premium',
          // ),
        ],
      ),
      body: PageView(
        controller: _pageController,
        children: _screens,
        onPageChanged: onPageChanged,
      ),
    );
  }
}
