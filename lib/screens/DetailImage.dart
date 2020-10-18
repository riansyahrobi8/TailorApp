import 'package:flutter/material.dart';
import 'package:tailorapp/utils/customColor.dart' as myColor;

class DetailImage extends StatelessWidget {
  final String image;
  final String tag;

  const DetailImage({Key key, this.image, this.tag}) : super(key: key);

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
                child: Image.asset(
                    "assets/images/materi/submateri/" + image + ".png")),
          ),
          onTap: () => Navigator.pop(context),
        ),
      ),
    );
  }
}
