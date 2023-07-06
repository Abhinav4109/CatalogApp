import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Catalog App'),
      ),
      body: const Center(
        child: Text("40 Minutes of Flutter"),
      ),
      drawer: const Drawer(),
    );
  }
}