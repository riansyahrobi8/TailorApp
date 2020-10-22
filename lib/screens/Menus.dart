import 'package:flutter/material.dart';
import 'package:tailorapp/routing/const_routing.dart';
import 'package:tailorapp/widgets/MyCustomText.dart';
import 'package:tailorapp/widgets/MyMenuItems.dart';
import 'package:tailorapp/widgets/MyNavDrawer.dart';
import 'package:tailorapp/utils/customColor.dart' as myColor;

class Menus extends StatefulWidget {
  @override
  _MenusState createState() => _MenusState();
}

class _MenusState extends State<Menus> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyNavDrawer(),
      key: _scaffoldKey,
      primary: true,
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.menu, color: myColor.textColorWhite),
            onPressed: () {
              _scaffoldKey.currentState.openDrawer();
            }),
        centerTitle: true,
        title: MyCustomText(
          text: "Bagian & Bentuk Busana",
          color: myColor.textColorWhite,
          fontSize: 16.0,
          fontWeight: FontWeight.w800,
          fontFamily: "Montserrat",
        ),
      ),
      backgroundColor: myColor.backgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: ListView(
          children: [
            MyMenuItems(
              image: "icons8-development-skill-96.png",
              color: myColor.kompetensiColor,
              text: "Kompetensi",
              onTap: () => Navigator.pushNamed(context, kompetensi),
            ),
            MyMenuItems(
              image: "icons8-books-96.png",
              color: myColor.materiColor,
              text: "Materi",
              onTap: () => Navigator.pushNamed(context, materi),
            ),
            MyMenuItems(
              image: "icons8-video-96.png",
              color: myColor.videoColor,
              text: "Video",
              onTap: () => Navigator.pushNamed(context, video),
            ),
            MyMenuItems(
              image: "icons8-test-passed-128.png",
              color: myColor.evaluasiColor,
              text: "Evaluasi",
              onTap: () => Navigator.pushNamed(context, evaluasi),
            ),
            MyMenuItems(
              image: "icons8-document-128.png",
              color: myColor.referensiColor,
              text: "Referensi",
              onTap: () => Navigator.pushNamed(context, referensi),
            ),
          ],
        ),
      ),
    );
  }
}
