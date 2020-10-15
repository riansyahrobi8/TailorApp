import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          "Profile",
          style: TextStyle(
              fontSize: 16.0,
              fontFamily: "Montserrat",
              color: Colors.white,
              fontWeight: FontWeight.w800),
        ),
      ),
      body: Center(
        child: Text("Hello World"),
      ),
    );
  }
}
