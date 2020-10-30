import 'package:flutter/material.dart';
import 'package:tailorapp/screens/materi/DetailDefinition.dart';
import 'package:tailorapp/widgets/MyCustomText.dart';
import 'package:tailorapp/utils/customColor.dart' as myColor;

class MyCardCustom extends StatelessWidget {
  final int id;
  final String image;
  final String urlImage;
  final String title;
  const MyCardCustom({
    Key key,
    this.id,
    this.image,
    this.title,
    this.urlImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: AspectRatio(
                    aspectRatio: 16 / 9,
                    child: Image.asset(
                      "assets/images/" + urlImage + "/" + image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                MyCustomText(
                  text: title,
                  color: myColor.secondaryColor,
                  fontSize: 14.0,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.w800,
                  textOverflow: TextOverflow.ellipsis,
                  maxLines: 2,
                )
              ],
            ),
            Positioned(
              top: -12.0,
              right: 0.0,
              child: ButtonTheme(
                height: 24.0,
                minWidth: 72.0,
                child: RaisedButton(
                  onPressed: () => Navigator.push(context,
                      MaterialPageRoute(builder: (_) => DetailDefinition())),
                  color: myColor.primaryColor,
                  child: MyCustomText(
                      text: "Detail",
                      fontSize: 12.0,
                      fontFamily: "Montserrat",
                      color: myColor.textColorWhite),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(72.0)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
