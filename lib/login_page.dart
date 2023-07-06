import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget{
  @override
  Widget build(context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Catalog App'),
      ),
      body: const Center(
        child: Text("Login Page", style: TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.bold,
          color: Colors.blueAccent,
          
        ),),
      ),
      drawer: const Drawer(),
    );
  }
}