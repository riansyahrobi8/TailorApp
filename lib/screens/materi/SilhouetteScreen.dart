import 'package:flutter/material.dart';
import 'package:tailorapp/widgets/MyCustomSilhouette.dart';
import 'package:tailorapp/widgets/MyCustomText.dart';
import 'package:tailorapp/utils/customColor.dart' as myColor;

class SilhouetteScreen extends StatefulWidget {
  @override
  _SilhouetteScreenState createState() => _SilhouetteScreenState();
}

class _SilhouetteScreenState extends State<SilhouetteScreen> {
  final controller = PageController(
    initialPage: 0,
  );

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
                child: PageView(
                  controller: controller,
                  children: [
                    MyCustomSilhouette(
                      title: "Siluet A",
                      tag: "siluetA",
                      urlImage: "siluet/siluetA",
                      desc:
                          "Siluet A merupakan busana yang didesain pada bagian atas kecil dan bagian bawah besar, baik panjang maupun pendek dengan lengan ataupun tanpa lengan.",
                    ),
                    MyCustomSilhouette(
                      title: "Siluet H",
                      tag: "siluetH",
                      urlImage: "siluet/siluetH",
                      desc:
                          "Siluet H merupakan busana yang didesain menyerupai huruf H atau tabung yang lurus dan tidak memiliki lekuk pinggang serta memiliki garis potongan pada pinggang.",
                    ),
                    MyCustomSilhouette(
                      title: "Siluet I",
                      tag: "siluetI",
                      urlImage: "siluet/siluetI",
                      desc:
                          "Siluet I merupakan busana yang didesain mempunyai model bagian atas, bagian tengah dan bagian bawah cenderung sama besar atau sama lebar. Namun, ada juga yang pada bagian pinggang sedikit ramping.",
                    ),
                    MyCustomSilhouette(
                      title: "Siluet L",
                      tag: "siluetL",
                      urlImage: "siluet/siluetL",
                      desc:
                          "Siluet L merupakan busana yang didesain menyerupai siluet I namun diberi tambahan dibagian belakang dengan bentuk panjang atau drapery.",
                    ),
                    MyCustomSilhouette(
                      title: "Siluet S",
                      tag: "siluetS",
                      urlImage: "siluet/siluetS",
                      desc:
                          "Siluet S merupakan busana yang didesain pada bagian atas besar, kecil pada bagian pinggang dan besar pada bagian bawah (rok).",
                    ),
                    MyCustomSilhouette(
                      title: "Siluet T",
                      tag: "siluetT",
                      urlImage: "siluet/siluetT",
                      desc:
                          "Siluet T merupakan siluet busana yang didesain kecil pada garis leher, besar pada lengan dan kecil pada bagan bawah (rok).",
                    ),
                    MyCustomSilhouette(
                      title: "Siluet Y",
                      tag: "siluetY",
                      urlImage: "siluet/siluetY",
                      desc:
                          "Siluet Y merupakan busana yang didesain pada bagian atas lebar dengan garis leher V dan bagian bawah (rok) mengecil atau menyempit.",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
