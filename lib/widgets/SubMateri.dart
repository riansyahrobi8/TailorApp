import 'package:flutter/material.dart';
import 'package:tailorapp/widgets/MyCustomText.dart';
import 'package:tailorapp/utils/customColor.dart' as myColor;

class SubMateri extends StatelessWidget {
  final String title;
  final GestureTapCallback onTap;

  const SubMateri({
    Key key,
    this.title,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 32.0),
          child: Container(
            width: double.infinity,
            child: MyCustomText(
              text: title,
              color: myColor.primaryColor,
              fontFamily: "Montserrat",
              fontWeight: FontWeight.w800,
              fontSize: 18.0,
            ),
          ),
        ),
      ),
      onTap: onTap,
    );
  }
}
