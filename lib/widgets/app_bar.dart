import 'package:flutter/material.dart';

AppBar appBar() {
  return AppBar(
    centerTitle: true,
    backgroundColor: Colors.white,
    elevation: 0,
    title: Image.asset(
      'assets/images/logo.png',
      height: 50,
    ),
  );
}
