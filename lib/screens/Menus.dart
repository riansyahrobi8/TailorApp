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
              text: "Kompetensi",
              onTap: () => Navigator.pushNamed(context, kompetensi),
            ),
            MyMenuItems(
              image: "icons8-books-96.png",
              text: "Materi",
              onTap: () => Navigator.pushNamed(context, materi),
            ),
            MyMenuItems(
              image: "icons8-video-96.png",
              text: "Video",
              onTap: () => Navigator.pushNamed(context, video),
            ),
            MyMenuItems(
              image: "icons8-test-passed-128.png",
              text: "Evaluasi",
              onTap: () => Navigator.pushNamed(context, evaluasi),
            ),
            MyMenuItems(
              image: "icons8-document-128.png",
              text: "Referensi",
              onTap: () => Navigator.pushNamed(context, referensi),
            ),
            MyMenuItems(
              image: "icons8-name-96.png",
              text: "Dosen Pembimbing",
              onTap: () => Navigator.pushNamed(context, dosbing),
            ),
          ],
        ),
      ),
    );
  }
}
