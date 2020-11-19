import 'package:flutter/material.dart';
import 'package:tailorapp/utils/customColor.dart' as myColor;
import 'package:tailorapp/widgets/MyCardCustomDetail.dart';
import 'package:tailorapp/widgets/MyCustomText.dart';

class DetailDefinition extends StatelessWidget {
  final int id;
  final String image;
  final String urlImage;
  final String title;
  final String definitions;
  final List variations;

  const DetailDefinition({
    Key key,
    this.id,
    this.image,
    this.urlImage,
    this.title,
    this.definitions,
    this.variations,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    Size size = mediaQuery.size;

    return Scaffold(
      backgroundColor: myColor.backgroundColor,
      appBar: AppBar(
        iconTheme: IconThemeData(color: myColor.textColorWhite),
        title: MyCustomText(
            text: title,
            fontSize: 16.0,
            fontFamily: "Montserrat",
            color: myColor.textColorWhite,
            fontWeight: FontWeight.w800),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 16 / 9,
              child: Image.asset(
                "assets/images/" + urlImage + "/" + image,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 16.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: MyCustomText(
                text: definitions,
                fontFamily: "Roboto",
                color: myColor.secondaryColor,
                fontSize: 14.0,
                textAlign: TextAlign.justify,
              ),
            ),
            SizedBox(
              height: 24.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: MyCustomText(
                text: "Bentuk & Variasi " + title,
                fontFamily: "Montserrat",
                color: myColor.secondaryColor,
                fontWeight: FontWeight.w800,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 16.0,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16.0),
              child: GridView.builder(
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: size.width / (size.height / 1.25)),
                  itemCount: variations.length,
                  itemBuilder: (context, index) {
                    return MyCardCustomDetail(
                      title: variations[index]['name'],
                      urlImage: urlImage,
                      image: variations[index]['images'],
                      tag: variations[index]['tag'],
                    );
                  }),
            ),
            SizedBox(
              height: 16.0,
            ),
          ],
        ),
      ),
    );
  }
}
