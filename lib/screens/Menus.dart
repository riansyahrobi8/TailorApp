import 'package:flutter/material.dart';

class Menus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Media Pembelajaran",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.0,
              fontWeight: FontWeight.w800,
              fontFamily: "Montserrat",
            ),
          ),
        ),
      ),
      backgroundColor: Color(0xFFF9F9F9),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Card(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Image.asset(
                'assets/images/icons8-development-skill-96.png',
                width: 96.0,
                height: 96.0,
              )),
        ),
      ),
    );
  }
}
