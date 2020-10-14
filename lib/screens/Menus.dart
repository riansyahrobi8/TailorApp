import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

class Menus extends StatefulWidget {
  @override
  _MenusState createState() => _MenusState();
}

class _MenusState extends State<Menus> {
  final GlobalKey _scaffoldKey = new GlobalKey();

  List<dynamic> data;

  Future<dynamic> _loadData() async {
    return data =
        jsonDecode(await rootBundle.loadString('assets/data/datamenus.json'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Color(0xFF73DAE7)),
              child: Text("data"),
            ),
            ListTile(
              title: Text("Profile"),
            )
          ],
        ),
      ),
      key: _scaffoldKey,
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.menu, color: Colors.white),
            onPressed: () {
              _scaffoldKey.currentState;
            }),
        centerTitle: true,
        title: Text(
          "Media Pembelajaran",
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.0,
            fontWeight: FontWeight.w800,
            fontFamily: "Montserrat",
          ),
        ),
      ),
      backgroundColor: Color(0xFFF9F9F9),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: FutureBuilder(
          future: _loadData(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else {
              return ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 24.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Image.asset(
                              'assets/images/' + data[index]['image'],
                              width: 96.0,
                              height: 96.0,
                            ),
                            SizedBox(
                              width: 24.0,
                            ),
                            Expanded(
                              child: Text(
                                data[index]['title'],
                                style: TextStyle(
                                    color: Color(0xFF505050),
                                    fontFamily: "Montserrat",
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w800),
                              ),
                            )
                          ],
                        )),
                  );
                },
              );
            }
          },
        ),
      ),
    );
  }
}
