import 'package:BMtec_app/screens/tabs_screen.dart';
import 'package:flutter/material.dart';

import './home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BM Tec',
      debugShowCheckedModeBanner: false,
      // home: HomePageScreen(),
      initialRoute: '/',
      routes: {
        '/': (ctx) => TabsScreen(),
      },
    );
  }
}
