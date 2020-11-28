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
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.only(top: 72.0),
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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32.0),
                  child: TextFormField(
                      controller: nameController,
                      decoration: InputDecoration(
                          filled: true,
                          labelText: "Masukan nama Anda",
                          isDense: true,
                          labelStyle: TextStyle(
                              fontFamily: "Montserrat",
                              fontSize: 15.0,
                              color: myColor.subTitleColor),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12.0),
                              borderSide: BorderSide(
                                  color: myColor.subTitleColor, width: 2.0)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12.0)))),
                ),
                SizedBox(
                  height: 56.0,
                ),
                ButtonTheme(
                  height: 44.0,
                  minWidth: 160.0,
                  child: RaisedButton(
                    onPressed: () {
                      return Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => GetDataSoal(
                                    name: nameController.text,
                                  )));
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
          ),
        ));
  }

  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
  }
}
