// ignore_for_file: prefer_const_constructors
import 'package:catalog_app/utlis/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Image.asset(
            'assets/images/login_image.png',
            
          ),
          Text(
            "Welcome",
            style: GoogleFonts.abel(
              fontSize: 30,
              fontWeight: FontWeight.bold,

            ),
          ),
          
          Padding(
            padding:
                EdgeInsetsDirectional.symmetric(vertical: 25, horizontal: 25),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Enter Username', label: Text('Username')),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Enter Password',
                    label: Text('Password'),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, MyRoute.homeRoute);
            },
            child: Text("Login"),
          )
        ],
      ),
      )
    );
  }
}
