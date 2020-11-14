import 'package:flutter/material.dart';
import 'package:tailorapp/screens/DetailImage.dart';
import 'package:tailorapp/utils/customColor.dart' as myColor;
import 'package:tailorapp/widgets/MyCustomText.dart';

class MyCardCustomDetail extends StatelessWidget {
  final String image;
  final String urlImage;
  final String title;
  final String tag;

  const MyCardCustomDetail(
      {Key key, this.image, this.urlImage, this.title, this.tag})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (_) => DetailImage(
                    image: image,
                    urlImage: urlImage,
                    tag: tag,
                  ))),
      child: Hero(
        tag: tag,
        child: Card(
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
