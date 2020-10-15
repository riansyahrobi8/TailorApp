import 'package:flutter/material.dart';
import 'package:tailorapp/widgets/MyCustomText.dart';

class MyMenuItems extends StatelessWidget {
  final String image;
  final String text;
  final GestureTapCallback onTap;

  const MyMenuItems({Key key, this.image, this.text, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Image.asset(
                  'assets/images/$image',
                  width: 96.0,
                  height: 96.0,
                ),
                SizedBox(
                  width: 24.0,
                ),
                Expanded(
                  child: MyCustomText(
                      text: text,
                      color: Color(0xFF505050),
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
