import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tailorapp/screens/evaluasi/hasilUjian.dart';
import 'package:tailorapp/utils/customColor.dart' as myColor;
import 'package:tailorapp/widgets/MyCustomText.dart';

class GetDataSoal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: DefaultAssetBundle.of(context)
          .loadString("assets/data/datasoal.json"),
      builder: (context, snapshot) {
        var myData = jsonDecode(snapshot.data.toString());
        if (myData == null) {
          return Scaffold(
              body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularProgressIndicator(),
                SizedBox(
                  height: 16.0,
                ),
                MyCustomText(
                  text: "Loading...",
                  fontFamily: "Montserrat",
                  fontSize: 16.0,
                  color: myColor.primaryColor,
                  fontWeight: FontWeight.w500,
                )
              ],
            ),
          ));
        } else {
          return QuizPage(
            myData: myData,
          );
        }
      },
    );
  }
}

class QuizPage extends StatefulWidget {
  final List myData;

  QuizPage({Key key, @required this.myData}) : super(key: key);

  @override
  _QuizPageState createState() => _QuizPageState(myData);
}

class _QuizPageState extends State<QuizPage> {
  var myData;
  Color colorToShow = Colors.white;
  Color right = myColor.secondaryColor;
  Color wrong = myColor.subTitleColor;
  int marks = 0;
  int i = 1;
  int timer = 30;
  String showTimer = "30";
  bool cancelTimer = false;

  @override
  void initState() {
    startTime();
    super.initState();
  }

  @override
  void setState(fn) {
    if (mounted) {
      super.setState(fn);
    }
  }

  Map<String, Color> btncolor = {
    "A": Colors.white,
    "B": Colors.white,
    "C": Colors.white,
    "D": Colors.white,
    "E": Colors.white
  };

  void checkAnswer(String k) {
    if (myData[3][i.toString()] == myData[2][i.toString()][k]) {
      marks += 5;
      colorToShow = right;
    } else {
      colorToShow = wrong;
    }
    setState(() {
      btncolor[k] = colorToShow;
      cancelTimer = true;
    });

    Timer(Duration(seconds: 2), nextQuestion);
  }

  void nextQuestion() {
    cancelTimer = false;
    timer = 30;
    setState(() {
      if (i < 20) {
        i++;
      } else {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => HasilUjian(result: marks)));
      }
      btncolor["A"] = Colors.white;
      btncolor["B"] = Colors.white;
      btncolor["C"] = Colors.white;
      btncolor["D"] = Colors.white;
      btncolor["E"] = Colors.white;
    });
    startTime();
  }

  void startTime() async {
    const second = Duration(seconds: 1);
    Timer.periodic(second, (Timer t) {
      setState(() {
        if (timer < 1) {
          t.cancel();
          nextQuestion();
        } else if (cancelTimer == true) {
          t.cancel();
        } else {
          timer -= 1;
        }
        showTimer = timer.toString();
      });
    });
  }

  _QuizPageState(this.myData);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
    return WillPopScope(
      onWillPop: () {
        return showDialog(
            context: context,
            builder: (context) => AlertDialog(
                  title: MyCustomText(
                    text: "Yakin ?",
                    fontFamily: "Montserrat",
                    color: myColor.primaryColor,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500,
                  ),
                  content: MyCustomText(
                    text:
                        "Kamu tidak bisa kembali lagi ke soal sekarang dan nilaimu akan dihapus",
                    fontFamily: "Roboto",
                    fontSize: 15.0,
                    color: myColor.subTitleColor,
                  ),
                  actions: [
                    FlatButton(
                        onPressed: () => Navigator.popUntil(
                            context, (route) => route.isFirst),
                        child: MyCustomText(
                          text: "Ya",
                          fontFamily: "Montserrat",
                          fontSize: 16.0,
                          color: myColor.primaryColor,
                          fontWeight: FontWeight.w600,
                        ))
                  ],
                ));
      },
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
                flex: 3,
                child: Container(
                    alignment: Alignment.bottomLeft,
                    padding: const EdgeInsets.all(16.0),
                    child: myData[0][i.toString()] == 'A'
                        ? MyCustomText(
                            text: myData[1][i.toString()],
                            fontFamily: "Montserrat",
                            fontSize: 16.0,
                            color: myColor.secondaryColor,
                            fontWeight: FontWeight.w400,
                          )
                        : myData[0][i.toString()] == 'B'
                            ? Row(
                                children: [
                                  Expanded(
                                    child: MyCustomText(
                                      text: myData[1][i.toString()],
                                      fontFamily: "Montserrat",
                                      fontSize: 16.0,
                                      color: myColor.secondaryColor,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 8.0,
                                  ),
                                  Image.asset(
                                    myData[4][i.toString()],
                                    width: 96.0,
                                    height: 160.0,
                                  )
                                ],
                              )
                            : MyCustomText(
                                text: myData[1][i.toString()],
                                fontFamily: "Montserrat",
                                fontSize: 16.0,
                                color: myColor.secondaryColor,
                                fontWeight: FontWeight.w400,
                              ))),
            Expanded(
                flex: 6,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      choiceAnswer('A'),
                      choiceAnswer('B'),
                      choiceAnswer('C'),
                      choiceAnswer('D'),
                      choiceAnswer('E')
                    ],
                  ),
                )),
            Expanded(
                flex: 1,
                child: Container(
                  child: Center(
                    child: MyCustomText(
                      text: showTimer,
                      fontFamily: "Montserrat",
                      fontSize: 28.0,
                      color: myColor.secondaryColor,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }

  Widget choiceAnswer(String k) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: MaterialButton(
            color: btncolor[k],
            minWidth: 250.0,
            height: 44.0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(22.0)),
            onPressed: () => checkAnswer(k),
            child: myData[0][i.toString()] == 'A'
                ? MyCustomText(
                    text: myData[2][i.toString()][k],
                    fontFamily: "Montserrat",
                    fontSize: 14.0,
                    fontWeight: FontWeight.w700,
                    color: myColor.primaryColor)
                : myData[0][i.toString()] == 'B'
                    ? MyCustomText(
                        text: myData[2][i.toString()][k],
                        fontFamily: "Montserrat",
                        fontSize: 14.0,
                        fontWeight: FontWeight.w700,
                        color: myColor.primaryColor)
                    : Image.asset(
                        myData[2][i.toString()][k],
                        width: 72.0,
                        height: 72.0,
                      )));
  }
}
