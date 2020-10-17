import 'package:flutter/material.dart';
import 'package:tailorapp/widgets/MyCustomText.dart';
import 'package:tailorapp/utils/customColor.dart' as myColor;

class MyDrawerBodyItem extends StatelessWidget {
  final IconData iconData;
  final String title;
  final GestureTapCallback onTap;

  const MyDrawerBodyItem({
    Key key,
    this.iconData,
    this.title,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        children: [
          Icon(
            iconData,
            color: myColor.primaryColor,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: MyCustomText(
                text: title,
                fontFamily: "Montserrat",
                color: myColor.secondaryColor,
                fontWeight: FontWeight.w800),
          )
        ],
      ),
      onTap: onTap,
    );
  }
}
