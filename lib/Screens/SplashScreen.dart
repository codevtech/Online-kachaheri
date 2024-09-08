


import 'dart:async';

import 'package:flutter/material.dart';
import 'package:online_kachahari/Screens/LoginPage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key, required this.title});



  final String title;

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

@override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_){
      Timer(Duration(seconds: 3),(){
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) {
          return  LoginPage();
        },));
      });
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(

          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/icons/apple_icon.png'),
              SizedBox( height: 100,),
              CircularProgressIndicator(),
              SizedBox(height: 100,),
              Text("Online Kachehri Since 2024")
            ],

          ),
        )
    );
  }
}