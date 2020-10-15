import 'package:flutter/material.dart';
import 'package:tailorapp/widgets/MyCustomText.dart';

class Kompetensi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFF9F9F9),
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          title: MyCustomText(
              text: "Kompetensi",
              fontSize: 16.0,
              fontFamily: "Montserrat",
              color: Colors.white,
              fontWeight: FontWeight.w800),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 8.0,
              ),
              MyCustomText(
                text: "Kompetensi",
                fontFamily: "Montserrat",
                color: Color(0xFF505050),
                fontWeight: FontWeight.w800,
                fontSize: 22.0,
              ),
              SizedBox(
                height: 16.0,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MyCustomText(
                    text: "3.3.",
                    color: Color(0xFF505050),
                    fontFamily: "Montserrat",
                    fontSize: 16.0,
                    fontWeight: FontWeight.w800,
                  ),
                  SizedBox(
                    width: 8.0,
                  ),
                  Expanded(
                    child: MyCustomText(
                      text: "Menerapkan bagian dan bentuk busana",
                      color: Color(0xFF505050),
                      fontFamily: "Montserrat",
                      fontSize: 16.0,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 16.0,
              ),
              Container(
                margin: const EdgeInsets.only(left: 36.0),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MyCustomText(
                          text: "3.3.1.",
                          color: Color(0xFF505050),
                          fontFamily: "Roboto",
                          fontSize: 14.0,
                        ),
                        SizedBox(
                          width: 8.0,
                        ),
                        Expanded(
                          child: MyCustomText(
                            text: "bagian-bagian busana",
                            color: Color(0xFF505050),
                            fontFamily: "Roboto",
                            fontSize: 14.0,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MyCustomText(
                          text: "3.3.2.",
                          color: Color(0xFF505050),
                          fontFamily: "Roboto",
                          fontSize: 14.0,
                        ),
                        SizedBox(
                          width: 8.0,
                        ),
                        Expanded(
                          child: MyCustomText(
                            text: "bentuk busana (siluet busana)",
                            color: Color(0xFF505050),
                            fontFamily: "Roboto",
                            fontSize: 14.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 24.0,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MyCustomText(
                    text: "4.3.",
                    color: Color(0xFF505050),
                    fontFamily: "Montserrat",
                    fontSize: 16.0,
                    fontWeight: FontWeight.w800,
                  ),
                  SizedBox(
                    width: 8.0,
                  ),
                  Expanded(
                    child: MyCustomText(
                      text: "Membuat gambar dan bagian bentuk busana",
                      color: Color(0xFF505050),
                      fontFamily: "Montserrat",
                      fontSize: 16.0,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 16.0,
              ),
              Container(
                margin: const EdgeInsets.only(left: 36.0),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MyCustomText(
                          text: "4.3.1.",
                          color: Color(0xFF505050),
                          fontFamily: "Roboto",
                          fontSize: 14.0,
                        ),
                        SizedBox(
                          width: 8.0,
                        ),
                        Expanded(
                          child: MyCustomText(
                            text:
                                "alat dan bahan untuk pembuatan bagian-bagian busana dan bentuk busana",
                            color: Color(0xFF505050),
                            fontFamily: "Roboto",
                            fontSize: 14.0,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MyCustomText(
                          text: "4.3.2.",
                          color: Color(0xFF505050),
                          fontFamily: "Roboto",
                          fontSize: 14.0,
                        ),
                        SizedBox(
                          width: 8.0,
                        ),
                        Expanded(
                          child: MyCustomText(
                            text:
                                "prosedur pembuatan gambar bagian-bagian busana dan bentuk busana",
                            color: Color(0xFF505050),
                            fontFamily: "Roboto",
                            fontSize: 14.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
