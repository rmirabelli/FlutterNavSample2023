import 'package:flutter/material.dart';
import 'diy_screen.dart';
import 'shop_screen.dart';
import 'home_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  var _selectedTab = 0;

  void _changeTab(int newValue) {
    setState(() {
      _selectedTab = newValue;
    });
  }

  final List<Widget> _screens = [
    HomeScreen(),
    DIYScreen(),
    ShopScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.handyman), label: 'DIY'),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_basket_outlined), label: 'Shop'),
          ],
          currentIndex: _selectedTab,
          onTap: _changeTab,
        ),
        body: IndexedStack(
          index: _selectedTab,
          children: _screens,
        ),
      ),
    );
  }
}
