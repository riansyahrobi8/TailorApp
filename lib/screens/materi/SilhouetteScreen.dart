import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:tailorapp/widgets/MyCustomSilhouette.dart';
import 'package:tailorapp/widgets/MyCustomText.dart';
import 'package:tailorapp/utils/customColor.dart' as myColor;
import 'package:flutter/services.dart' as rootBundle;

class SilhouetteScreen extends StatefulWidget {
  @override
  _SilhouetteScreenState createState() => _SilhouetteScreenState();
}

class _SilhouetteScreenState extends State<SilhouetteScreen> {
  final controller = PageController(
    initialPage: 0,
  );

  Future<dynamic> getSiluets() async {
    return jsonDecode(
        await rootBundle.rootBundle.loadString("assets/data/datasiluets.json"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: myColor.backgroundColor,
        appBar: AppBar(
          iconTheme: IconThemeData(color: myColor.textColorWhite),
          title: MyCustomText(
              text: "Bentuk & Siluet",
              fontSize: 16.0,
              fontFamily: "Montserrat",
              color: myColor.textColorWhite,
              fontWeight: FontWeight.w800),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 8.0,
              ),
              MyCustomText(
                text: "Bentuk atau Siluet busana",
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
                    "Bentuk busana kerap kali disebut sebagai siluet busana (fashion silhouette). Siluet busana yaitu garis luar bentuk suatu busana karena potongan atau pola serta adanya detail seperti lipit, kerut, kelim, dan kupnat.",
                fontFamily: "Roboto",
                color: myColor.secondaryColor,
                fontSize: 14.0,
              ),
              SizedBox(
                height: 24.0,
              ),
              MyCustomText(
                text: "Siluet berdasarkan bentuk akhir garis luar",
                fontFamily: "Montserrat",
                color: myColor.secondaryColor,
                fontWeight: FontWeight.w800,
                fontSize: 16.0,
              ),
              SizedBox(
                height: 8.0,
              ),
              Expanded(
                child: FutureBuilder(
                  future: getSiluets(),
                  builder: (context, snapshot) {
                    if (!snapshot.hasData) {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    } else {
                      var data = snapshot.data;
                      return PageView.builder(
                        itemBuilder: (context, index) => MyCustomSilhouette(
                          title: data[index]['title'],
                          tag: data[index]['tag'],
                          urlImage: data[index]['urlImage'],
                          desc: data[index]['desc'],
                        ),
                        itemCount: data.length,
                      );
                    }
                  },
                ),
              ),
            ],
          ),
        ));
  }
}
