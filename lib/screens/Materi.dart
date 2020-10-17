import 'package:flutter/material.dart';
import 'package:tailorapp/routing/const_routing.dart';
import 'package:tailorapp/widgets/MyCustomText.dart';
import 'package:tailorapp/utils/customColor.dart' as myColor;
import 'package:tailorapp/widgets/SubMateri.dart';

class Materi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: myColor.backgroundColor,
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          title: MyCustomText(
              text: "Materi",
              fontSize: 16.0,
              fontFamily: "Montserrat",
              color: Colors.white,
              fontWeight: FontWeight.w800),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Column(
            children: [
              SubMateri(
                title: "Pengertian bagian-bagian busana",
                onTap: () => Navigator.pushNamed(context, definition),
              ),
              SubMateri(
                title: "Bentuk atau siluet busana",
                onTap: () => Navigator.pushNamed(context, definition),
              ),
              SubMateri(
                title: "Menggambar bagian-bagian busana",
                onTap: () => Navigator.pushNamed(context, definition),
              ),
            ],
          ),
        ));
  }
}
