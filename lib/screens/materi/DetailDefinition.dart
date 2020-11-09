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
    print(details.length);
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
      body: Column(
        children: [
          Text(image),
          Text(urlImage),
          Text(title),
          Text(definitions),
          Container(
            child: ListView.builder(
              shrinkWrap: true,
              itemBuilder: (context, index) {
                print(details.length);
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
    );
  }
}
