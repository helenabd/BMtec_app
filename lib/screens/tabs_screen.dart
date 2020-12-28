import 'package:BMtec_app/home.dart';
import 'package:BMtec_app/screens/cart_screen.dart';
import 'package:BMtec_app/screens/favorite_screen.dart';
import 'package:BMtec_app/screens/profile_screen.dart';
import 'package:BMtec_app/widgets/app_bar.dart';
import 'package:BMtec_app/widgets/navigation_bar.dart';
import 'package:flutter/material.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  List<Map<String, Object>> _pages;
  int _selectedPageIndex = 0;

  @override
  void initState() {
    _pages = [
      {
        'page': HomePageScreen(),
      },
      {
        'page': FavoriteScreen(),
      },
      {
        'page': CartScreen(),
      },
      {
        'page': ProfileScreen(),
      },
    ];
    super.initState();
  }

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: _pages[_selectedPageIndex]['page'],
      bottomNavigationBar: navigationBar(_selectPage, _selectedPageIndex),
    );
  }
}
