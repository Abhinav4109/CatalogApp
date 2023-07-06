import 'package:catalog_app/home_page.dart';
import 'package:catalog_app/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(brightness: Brightness.dark),
      initialRoute: '/home',
      routes: {
        '/login': (context) => LoginPage(),
        '/home': (context) => HomePage()
      },
    );
  }
}
