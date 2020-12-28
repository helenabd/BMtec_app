import 'package:BMtec_app/theme.dart';
import 'package:flutter/material.dart';

BottomNavigationBar navigationBar(Function selectPage, int selectedPageIndex) {
  return BottomNavigationBar(
    onTap: selectPage,
    backgroundColor: Colors.white,
    selectedItemColor: primaryColor,
    unselectedIconTheme: IconThemeData(color: secundaryColor, size: 32),
    unselectedLabelStyle: TextStyle(
      color: secundaryColor,
      fontSize: 16,
    ),
    currentIndex: selectedPageIndex,
    items: [
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Início',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.favorite),
        label: 'Favoritos',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.shopping_bag),
        label: 'Carrinho',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.person),
        label: 'Perfil',
      ),
    ],
  );
}
