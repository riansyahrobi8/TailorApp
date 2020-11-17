import 'package:flutter/material.dart';
import 'package:tailorapp/screens/evaluasi/quizpage.dart';
import 'package:tailorapp/widgets/MyCustomText.dart';
import 'package:tailorapp/utils/customColor.dart' as myColor;
import 'package:shared_preferences/shared_preferences.dart';

class Evaluasi extends StatefulWidget {
  @override
  _EvaluasiState createState() => _EvaluasiState();
}

class _EvaluasiState extends State<Evaluasi> {
  TextEditingController nameController = new TextEditingController();
  String username = '';

  void addStringToSF(String name) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('username', nameController.text);
  }

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
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: MyCustomText(
                    text:
                        "Test Pemahaman Mu Mengenai Busana dengan Mengerjakan Soal-Soal Berikut",
                    fontSize: 16.0,
                    fontFamily: "Montserrat",
                    color: myColor.primaryColor,
                    textAlign: TextAlign.center,
                    fontWeight: FontWeight.w800),
              ),
              SizedBox(
                height: 56.0,
              ),
              ButtonTheme(
                height: 44.0,
                minWidth: 160.0,
                child: RaisedButton(
                  onPressed: () {
                    return Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => GetDataSoal()));
                  },
                  color: myColor.primaryColor,
                  child: MyCustomText(
                      text: "Mulai",
                      fontSize: 22.0,
                      fontFamily: "Montserrat",
                      color: myColor.textColorWhite),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0)),
                ),
              ),
            ],
          ),
        ));
  }
}
