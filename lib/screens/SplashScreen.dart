import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tailorapp/routing/const_routing.dart';
import 'package:tailorapp/widgets/MyCustomText.dart';
import 'package:tailorapp/utils/customColor.dart' as myColor;

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  String _name = 'Created by Tri Annisa';
  final splashDelay = 5;

  @override
  void initState() {
    super.initState();
    _loadWidget();
  }

  _loadWidget() async {
    var _duration = Duration(seconds: splashDelay);
    return Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.pushReplacementNamed(context, home);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myColor.primaryColor,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.only(top: 72.0),
                child: ClipRRect(
                  child: Image.asset(
                    'assets/images/27.UNY.png',
                    width: 120.0,
                    height: 120.0,
                    fit: BoxFit.cover,
                  ),
                )),
            CircularProgressIndicator(),
            MyCustomText(
                text: _name,
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontFamily: "Montserrat",
                color: myColor.textColorWhite),
          ],
        ),
      ),
    );
  }
}
