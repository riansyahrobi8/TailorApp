import 'package:flutter/material.dart';
import 'package:tailorapp/widgets/MyCustomText.dart';
import 'package:tailorapp/utils/customColor.dart' as myColor;

class DefinitionScreen extends StatefulWidget {
  @override
  _DefinitionScreenState createState() => _DefinitionScreenState();
}

class _DefinitionScreenState extends State<DefinitionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: myColor.backgroundColor,
        appBar: AppBar(
          iconTheme: IconThemeData(color: myColor.textColorWhite),
          title: MyCustomText(
              text: "Materi",
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
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        "assets/images/materi/garisleher/bentukdasargarisleher.jpeg",
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      MyCustomText(
                        text: "Garis Leher (Neckline)",
                        color: myColor.secondaryColor,
                        fontSize: 12.0,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w800,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
