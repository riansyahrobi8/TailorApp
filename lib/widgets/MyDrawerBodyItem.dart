import 'package:flutter/material.dart';
import 'package:tailorapp/widgets/MyCustomText.dart';

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
            color: Color(0xFF73DAE7),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: MyCustomText(
                text: title,
                fontFamily: "Montserrat",
                color: Color(0xFF505050),
                fontWeight: FontWeight.w800),
          )
        ],
      ),
      onTap: onTap,
    );
  }
}
