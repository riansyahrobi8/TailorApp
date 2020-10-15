import 'package:flutter/material.dart';
import 'package:tailorapp/widgets/MyCustomText.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: MyCustomText(
            text: "Pengaturan",
            fontSize: 16.0,
            fontFamily: "Montserrat",
            color: Colors.white,
            fontWeight: FontWeight.w800),
      ),
      body: Center(
        child: Text("Hello World"),
      ),
    );
  }
}