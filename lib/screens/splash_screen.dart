import 'dart:async';

import 'package:flutter/material.dart';
import 'package:trybeandlockr/screens/loginorsignup.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Animation animation;
  AnimationController animationController;
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 2),
      // () => createButton(),
      () => Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (BuildContext context) => LoginOrSignup())),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[100],
      body: Center(
          child: AnimatedOpacity(
        duration: Duration(milliseconds: 500),
        opacity: 1,
        child: Text(
          "Splash Screen",
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      )),
      bottomNavigationBar: new BottomAppBar(
        child: Container(
          child: Row(
            children: [],
          ),
        ),
      ),
    );
  }
}
