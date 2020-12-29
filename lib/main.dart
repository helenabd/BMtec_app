import 'package:flutter/material.dart';

import './screens/tabs_screen.dart';

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
