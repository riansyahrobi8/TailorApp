import 'package:flutter/material.dart';
import 'package:tailorapp/widgets/MyCustomText.dart';
import 'package:tailorapp/utils/customColor.dart' as myColor;

class SilhouetteScreen extends StatefulWidget {
  @override
  _SilhouetteScreenState createState() => _SilhouetteScreenState();
}

class _SilhouetteScreenState extends State<SilhouetteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myColor.backgroundColor,
      appBar: AppBar(
        iconTheme: IconThemeData(color: myColor.textColorWhite),
        title: MyCustomText(
            text: "Bentuk & Siluet",
            fontSize: 16.0,
            fontFamily: "Montserrat",
            color: myColor.textColorWhite,
            fontWeight: FontWeight.w800),
      ),
      body: Center(
        child: Text("Hello World"),
      ),
    );
  }
}
