import 'package:flutter/material.dart';
import 'package:tailorapp/widgets/MyCustomText.dart';

class Materi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF9F9F9),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: MyCustomText(
            text: "Materi",
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
