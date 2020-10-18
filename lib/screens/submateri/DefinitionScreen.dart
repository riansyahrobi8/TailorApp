import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:tailorapp/widgets/MyCardCustom.dart';
import 'package:tailorapp/widgets/MyCustomText.dart';
import 'package:tailorapp/utils/customColor.dart' as myColor;
import 'package:flutter/services.dart' as rootBundle;

class DefinitionScreen extends StatefulWidget {
  @override
  _DefinitionScreenState createState() => _DefinitionScreenState();
}

class _DefinitionScreenState extends State<DefinitionScreen> {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    Size size = mediaQuery.size;

    Future<dynamic> loadData() async {
      return jsonDecode(await rootBundle.rootBundle
          .loadString("assets/data/datamateri.json"));
    }

    return Scaffold(
        backgroundColor: myColor.backgroundColor,
        appBar: AppBar(
          iconTheme: IconThemeData(color: myColor.textColorWhite),
          title: MyCustomText(
              text: "Pengertian",
              fontSize: 16.0,
              fontFamily: "Montserrat",
              color: myColor.textColorWhite,
              fontWeight: FontWeight.w800),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: ListView(
            children: [
              SizedBox(
                height: 8.0,
              ),
              MyCustomText(
                text: "Pengertian bagian-bagian busana",
                fontFamily: "Montserrat",
                color: myColor.secondaryColor,
                fontWeight: FontWeight.w800,
                fontSize: 22.0,
              ),
              SizedBox(
                height: 16.0,
              ),
              MyCustomText(
                text:
                    "Bagian bagian busana ialah bentuk bentuk tertentu yang melengkapi dan menjadi ciri khas dari busana. Bagian-bagian busana terdiri dari garis leher (neckline), kerah (collar), lengan (sleeve), blus (blouse), rok (skirt), celana (pant), manset (cuff), saku (pocket), dan belahan (opening).",
                fontFamily: "Roboto",
                color: myColor.secondaryColor,
                fontSize: 14.0,
              ),
              SizedBox(
                height: 16.0,
              ),
              MyCustomText(
                text: "Pengertian bagian-bagian busana",
                fontFamily: "Montserrat",
                color: myColor.secondaryColor,
                fontWeight: FontWeight.w800,
                fontSize: 16.0,
              ),
              SizedBox(
                height: 8.0,
              ),
              FutureBuilder(
                future: loadData(),
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  } else {
                    var data = snapshot.data;
                    print(data);
                    return GridView.builder(
                      shrinkWrap: true,
                      physics: ScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: size.width / (size.height / 1.25)),
                      itemCount: data.length,
                      itemBuilder: (context, index) => MyCardCustom(
                        image: data[index]['image'],
                        title: data[index]['title'],
                        url: data[index]['url'],
                      ),
                    );
                  }
                },
              )
            ],
          ),
        ));
  }
}
