import 'package:flutter/material.dart';
import 'package:tailorapp/screens/Menus.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFF9F9F9),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    "Media Pembelajaran",
                    style: TextStyle(
                        fontFamily: "Montserrat",
                        fontSize: 16.0,
                        fontWeight: FontWeight.w800,
                        color: Color(0xFF505050)),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 100.0, bottom: 116.0),
                    child: Image.asset(
                      "assets/images/onBoarding.png",
                      width: 96.0,
                      height: 96.0,
                    ),
                  ),
                  Text(
                    "Bagian & Bentuk Busana",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: "Montserrat",
                        fontSize: 24.0,
                        fontWeight: FontWeight.w800,
                        color: Color(0xFF505050)),
                  ),
                  SizedBox(
                    height: 16.0,
                  ),
                  Text(
                    "Mata Pelajaran Dasar Desain Kelas X SMK Tata Busanan",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: "Roboto",
                        fontSize: 14.0,
                        color: Color(0xFFB4B4B4)),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 24.0),
              child: ButtonTheme(
                height: 44.0,
                minWidth: 160.0,
                child: RaisedButton(
                  onPressed: () {
                    return Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => Menus()));
                  },
                  color: Color(0xFF73DAE7),
                  child: Text(
                    "Mulai",
                    style: TextStyle(
                        fontSize: 22.0,
                        fontFamily: "Montserrat",
                        color: Colors.white),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0)),
                ),
              ),
            )
          ],
        ));
  }
}
