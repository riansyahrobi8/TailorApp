import 'package:flutter/material.dart';
import 'package:tailorapp/screens/Evaluasi.dart';
import 'package:tailorapp/widgets/MyCustomText.dart';
import 'package:tailorapp/utils/customColor.dart' as myColor;

class HasilUjian extends StatefulWidget {
  final int result;

  HasilUjian({Key key, @required this.result}) : super(key: key);
  @override
  _HasilUjianState createState() => _HasilUjianState(result);
}

class _HasilUjianState extends State<HasilUjian> {
  int result;

  _HasilUjianState(this.result);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
              child: MyCustomText(
                text: "Nilai mu adalah $result",
                fontFamily: "Montserrat",
                fontSize: 24.0,
                fontWeight: FontWeight.w700,
                color: myColor.primaryColor,
                textAlign: TextAlign.center,
              ),
            ),
            ButtonTheme(
              height: 44.0,
              minWidth: 160.0,
              child: RaisedButton(
                onPressed: () {
                  return Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Evaluasi()));
                },
                color: myColor.primaryColor,
                child: MyCustomText(
                    text: "Selesai",
                    fontSize: 22.0,
                    fontFamily: "Montserrat",
                    color: myColor.textColorWhite),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
