import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Catalog App'),
      ),
      body: const Center(
        child: Text(
          "Home Page",
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            color: Colors.blueAccent,
          ),
        ),
      ),
      drawer: const Drawer(),
    );
  }
}
