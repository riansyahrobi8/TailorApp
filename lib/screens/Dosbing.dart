import 'package:flutter/material.dart';
import 'package:tailorapp/widgets/MyCustomText.dart';

class Dosbing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFF9F9F9),
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          title: MyCustomText(
              text: "Dosen Pembimbing",
              fontSize: 16.0,
              fontFamily: "Montserrat",
              color: Colors.white,
              fontWeight: FontWeight.w800),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 56.0, bottom: 24.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(120.0),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.15),
                            blurRadius: 15)
                      ]),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(152.0),
                    child: Image.asset(
                      "assets/images/dosbing.jpg",
                      width: 156.0,
                      height: 156.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                MyCustomText(
                    text: "197202081998021001",
                    textAlign: TextAlign.center,
                    fontFamily: "Montserrat",
                    fontSize: 14.0,
                    fontWeight: FontWeight.w800,
                    color: Color(0xFF505050)),
                SizedBox(
                  height: 16.0,
                ),
                MyCustomText(
                    text: "Triyanto, S.Sn., M.A.",
                    textAlign: TextAlign.center,
                    fontFamily: "Montserrat",
                    fontSize: 18.0,
                    fontWeight: FontWeight.w800,
                    color: Color(0xFF505050)),
                SizedBox(
                  height: 8.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MyCustomText(
                        text: "triyanto@uny.ac.id",
                        textAlign: TextAlign.center,
                        fontFamily: "Roboto",
                        fontSize: 14.0,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF505050)),
                    SizedBox(
                      width: 8.0,
                    ),
                    Icon(
                      Icons.email_outlined,
                      color: Color(0xFF73DAE7),
                    )
                  ],
                ),
                SizedBox(
                  height: 32.0,
                ),
                MyCustomText(
                    text:
                        "Pendidikan Teknik Boga dan Busana Universitas Negeri Yogyakarta",
                    textAlign: TextAlign.center,
                    fontFamily: "Roboto",
                    fontSize: 16.0,
                    color: Color(0xFF505050)),
                SizedBox(
                  height: 56.0,
                )
              ],
            ),
          ),
        ));
  }
}
