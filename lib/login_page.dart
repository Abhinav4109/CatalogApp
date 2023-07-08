// ignore_for_file: prefer_const_constructors
import 'package:catalog_app/utlis/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = '';
  bool changeButton = false;
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
            "Welcome $name",
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
                      onChanged: (value) {
                        setState(() {
                          name  = value;
                        });
                      },
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
          InkWell(
            onTap: () async {
              setState(() {
                          changeButton = true;
                        });
              await Future.delayed(Duration (seconds: 1));
              Navigator.pushNamed(context, MyRoute.homeRoute);
            },
            child: AnimatedContainer(
            duration: Duration(seconds: 1),
            alignment: Alignment.center,
            width: changeButton? 100 : 150,
            height: 50,
            child: changeButton ? Icon(Icons.done, color: Colors.white,) : Text(
              "Login",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(changeButton ? 50 : 8),

            ),
          ),
          )
          // ElevatedButton(
          //   style: TextButton.styleFrom(minimumSize: Size(150, 50)),
          //   onPressed: () {
          //     Navigator.pushNamed(context, MyRoute.homeRoute);
          //   },
          //   child: Text(
          //     "Login",
          //     style: TextStyle(fontSize: 20),
          //   ),
          // )
        ],
      ),
      )
    );
  }
}
