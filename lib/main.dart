// ignore_for_file: prefer_const_constructors
import 'package:catalog_app/home_page.dart';
import 'package:catalog_app/login_page.dart';
import 'package:flutter/material.dart';
import 'package:catalog_app/utlis/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(brightness: Brightness.dark),
      initialRoute: '/login',
      routes: {
        MyRoute.loginRoute: (context) => LoginPage(),
        '/home': (context) => HomePage()
      },
    );
  }
}
