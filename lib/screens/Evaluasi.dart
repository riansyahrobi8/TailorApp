import 'package:flutter/material.dart';
import 'package:tailorapp/widgets/MyCustomText.dart';
import 'package:tailorapp/utils/customColor.dart' as myColor;

class Evaluasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myColor.backgroundColor,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: MyCustomText(
            text: "Evaluasi",
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
