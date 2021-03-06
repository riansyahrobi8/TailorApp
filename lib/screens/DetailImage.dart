import 'package:flutter/material.dart';
import 'package:tailorapp/utils/customColor.dart' as myColor;

class DetailImage extends StatelessWidget {
  final String urlImage;
  final String image;
  final String tag;

  const DetailImage({Key key, this.urlImage, this.tag, this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        iconTheme: IconThemeData(color: myColor.textColorWhite),
      ),
      body: InteractiveViewer(
        panEnabled: false,
        minScale: 0.5,
        maxScale: 2,
        child: GestureDetector(
          child: Center(
            child: Hero(
                tag: tag,
                child: Image.asset("assets/images/" + urlImage + "/" + image)),
          ),
          onTap: () => Navigator.pop(context),
        ),
      ),
    );
  }
}
