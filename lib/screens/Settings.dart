import 'package:flutter/material.dart';
import 'package:tailorapp/widgets/MyCustomText.dart';
import 'package:tailorapp/utils/customColor.dart' as myColor;

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool _value = false;

  void _onChanged(bool value) {
    setState(() {
      _value = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: myColor.backgroundColor,
        appBar: AppBar(
          iconTheme: IconThemeData(color: myColor.textColorWhite),
          title: MyCustomText(
              text: "Pengaturan",
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
              Container(
                margin: const EdgeInsets.only(top: 24.0),
                child: MyCustomText(
                  text: "UMUM",
                  fontFamily: "Montserrat",
                  fontSize: 13.0,
                  color: myColor.primaryColor,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 16.0,
              ),
              Container(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MyCustomText(
                            text: "Musik",
                            fontFamily: "Montserrat",
                            fontSize: 18.0,
                            fontWeight: FontWeight.w800,
                            color: myColor.secondaryColor),
                        SizedBox(
                          height: 8.0,
                        ),
                        MyCustomText(
                          text: "Musik pada aplikasi",
                          fontFamily: "Roboto",
                          fontSize: 13.0,
                          color: myColor.subTitleColor,
                          fontWeight: FontWeight.w500,
                        )
                      ],
                    ),
                    Switch(
                        activeColor: myColor.primaryColor,
                        value: _value,
                        onChanged: (bool value) {
                          _onChanged(value);
                        })
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
