import 'package:flutter/material.dart';
import 'package:tailorapp/routing/const_routing.dart';
import 'package:tailorapp/widgets/MyCustomText.dart';
import 'package:tailorapp/utils/customColor.dart' as myColor;

class Evaluasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: myColor.backgroundColor,
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          title: MyCustomText(
              text: "Evaluasi",
              fontSize: 16.0,
              fontFamily: "Montserrat",
              color: Colors.white,
              fontWeight: FontWeight.w800),
        ),
        body: Stack(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: ListView(
                children: [
                  Card(
                    color: myColor.primaryColor,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 24.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          CircleAvatar(
                            backgroundColor: myColor.textColorWhite,
                            child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: MyCustomText(
                                  text: "A",
                                  color: myColor.primaryColor,
                                  fontSize: 18.0,
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.w800,
                                )),
                          ),
                          SizedBox(
                            width: 24.0,
                          ),
                          Expanded(
                            child: MyCustomText(
                                text:
                                    "Jumlah soal 20 dengan masing masing nomor memiliki skor 5, maka jika benar semua skor akhir 100. Kriteria dinyatakan lulus apabila mampu menjawab 15 soal atau skor 75.",
                                color: myColor.textColorWhite,
                                fontFamily: "Montserrat",
                                fontSize: 18.0,
                                fontWeight: FontWeight.w800),
                          )
                        ],
                      ),
                    ),
                  ),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 24.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          CircleAvatar(
                            backgroundColor: myColor.primaryColor,
                            child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: MyCustomText(
                                  text: "B",
                                  color: myColor.textColorWhite,
                                  fontSize: 18.0,
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.w800,
                                )),
                          ),
                          SizedBox(
                            width: 24.0,
                          ),
                          Expanded(
                            child: MyCustomText(
                                text:
                                    "Jumlah soal 20 dengan masing masing nomor memiliki skor 5, maka jika benar semua skor akhir 100.",
                                color: myColor.primaryColor,
                                fontFamily: "Montserrat",
                                fontSize: 18.0,
                                fontWeight: FontWeight.w800),
                          )
                        ],
                      ),
                    ),
                  ),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 24.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          CircleAvatar(
                            backgroundColor: myColor.primaryColor,
                            child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: MyCustomText(
                                  text: "C",
                                  color: myColor.textColorWhite,
                                  fontSize: 18.0,
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.w800,
                                )),
                          ),
                          SizedBox(
                            width: 24.0,
                          ),
                          Expanded(
                            child: MyCustomText(
                                text:
                                    "Jumlah soal 20 dengan masing masing nomor memiliki skor 5, maka jika benar semua skor akhir 100.",
                                color: myColor.primaryColor,
                                fontFamily: "Montserrat",
                                fontSize: 18.0,
                                fontWeight: FontWeight.w800),
                          )
                        ],
                      ),
                    ),
                  ),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 24.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          CircleAvatar(
                            backgroundColor: myColor.primaryColor,
                            child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: MyCustomText(
                                  text: "D",
                                  color: myColor.textColorWhite,
                                  fontSize: 18.0,
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.w800,
                                )),
                          ),
                          SizedBox(
                            width: 24.0,
                          ),
                          Expanded(
                            child: MyCustomText(
                                text:
                                    "Jumlah soal 20 dengan masing masing nomor memiliki skor 5, maka jika benar semua skor akhir 100.",
                                color: myColor.primaryColor,
                                fontFamily: "Montserrat",
                                fontSize: 18.0,
                                fontWeight: FontWeight.w800),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 96.0,
                  )
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                      color: Colors.grey,
                      blurRadius: 8,
                      offset: Offset(0, -2.0))
                ]),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ButtonTheme(
                    height: 44.0,
                    minWidth: 160.0,
                    child: RaisedButton(
                      onPressed: () {
                        return Navigator.pushNamed(context, startdraw);
                      },
                      color: myColor.primaryColor,
                      child: MyCustomText(
                          text: "Selanjutnya",
                          fontSize: 18.0,
                          fontFamily: "Montserrat",
                          color: myColor.textColorWhite),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0)),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
