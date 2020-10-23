import 'package:flutter/material.dart';
import 'package:tailorapp/routing/const_routing.dart';
import 'package:tailorapp/screens/DetailImage.dart';
import 'package:tailorapp/utils/customColor.dart' as myColor;
import 'package:tailorapp/widgets/MyCustomText.dart';

class MyCustomSilhouette extends StatelessWidget {
  final String image;
  final String urlImage;
  final String tag;
  final String desc;
  final String title;

  const MyCustomSilhouette({
    Key key,
    this.image,
    this.tag,
    this.desc,
    this.title,
    this.urlImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
            child: Hero(
              tag: tag,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AspectRatio(
                    aspectRatio: 16 / 9,
                    child: Image.asset(
                      "assets/images/" + urlImage + "/" + image,
                    ),
                  ),
                ),
              ),
            ),
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => DetailImage(
                    tag: silhouette,
                    urlImage: "$urlImage",
                    image: "$image",
                  ),
                ))),
        SizedBox(
          height: 16.0,
        ),
        Align(
          alignment: Alignment.center,
          child: MyCustomText(
            text: title,
            fontFamily: "Montserrat",
            color: myColor.secondaryColor,
            fontWeight: FontWeight.w800,
            textAlign: TextAlign.center,
            fontSize: 14.0,
          ),
        ),
        SizedBox(
          height: 8.0,
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 24.0),
          child: MyCustomText(
            text: desc,
            fontFamily: "Roboto",
            fontSize: 13.0,
            color: myColor.secondaryColor,
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}
