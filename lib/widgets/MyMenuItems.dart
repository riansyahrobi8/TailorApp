import 'package:flutter/material.dart';
import 'package:tailorapp/widgets/MyCustomText.dart';
import 'package:tailorapp/utils/customColor.dart' as myColor;

class MyMenuItems extends StatelessWidget {
  final String image;
  final String text;
  final Color color;
  final GestureTapCallback onTap;

  const MyMenuItems({Key key, this.image, this.text, this.onTap, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        color: color,
        child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                CircleAvatar(
                  backgroundColor: myColor.textColorWhite,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'assets/images/$image',
                      width: 96.0,
                      height: 96.0,
                    ),
                  ),
                ),
                SizedBox(
                  width: 24.0,
                ),
                Expanded(
                  child: MyCustomText(
                      text: text,
                      color: myColor.textColorWhite,
                      fontFamily: "Montserrat",
                      fontSize: 18.0,
                      fontWeight: FontWeight.w800),
                )
              ],
            )),
      ),
      onTap: onTap,
    );
  }
}
