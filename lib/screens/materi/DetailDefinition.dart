import 'package:flutter/material.dart';
import 'package:tailorapp/utils/customColor.dart' as myColor;
import 'package:tailorapp/widgets/MyCustomText.dart';

class DetailDefinition extends StatelessWidget {
  final int id;
  final String image;
  final String urlImage;
  final String title;
  final String definitions;
  final List details;

  const DetailDefinition({
    Key key,
    this.id,
    this.image,
    this.urlImage,
    this.title,
    this.definitions,
    this.details,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              ),
            ),
            SizedBox(
              height: 24.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: MyCustomText(
                text: "Variasi" + title,
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
              child: ListView.builder(
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Text(details[index]['name']),
                      Text(details[index]['images'])
                    ],
                  );
                },
                itemCount: details.length,
              ),
            )
          ],
        ),
      ),
    );
  }
}
