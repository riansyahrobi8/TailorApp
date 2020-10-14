import 'package:flutter/material.dart';
import 'package:tailorapp/screens/SplashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primaryColor: Color(0xFF73DAE7)),
        title: 'Tailor App',
        home: SplashScreen());
  }
}
