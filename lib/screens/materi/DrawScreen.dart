import 'package:flutter/material.dart';
import 'package:tailorapp/routing/const_routing.dart';
import 'package:tailorapp/widgets/MyCustomText.dart';
import 'package:tailorapp/utils/customColor.dart' as myColor;

class DrawScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myColor.backgroundColor,
      appBar: AppBar(
        iconTheme: IconThemeData(color: myColor.textColorWhite),
        title: MyCustomText(
            text: "Menggambar",
            fontSize: 16.0,
            fontFamily: "Montserrat",
            color: myColor.textColorWhite,
            fontWeight: FontWeight.w800),
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 8.0,
                ),
                MyCustomText(
                  text: "Menggambar bagian-bagian busana",
                  fontFamily: "Montserrat",
                  color: myColor.secondaryColor,
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
                      text: "A.",
                      color: myColor.secondaryColor,
                      fontFamily: "Montserrat",
                      fontSize: 16.0,
                      fontWeight: FontWeight.w800,
                    ),
                    SizedBox(
                      width: 8.0,
                    ),
                    Expanded(
                      child: MyCustomText(
                        text: "Alat dan Bahan",
                        color: myColor.secondaryColor,
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
                  margin: const EdgeInsets.only(left: 24.0),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MyCustomText(
                            text: "1.",
                            color: myColor.secondaryColor,
                            fontFamily: "Roboto",
                            fontSize: 14.0,
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          Expanded(
                            child: MyCustomText(
                              text:
                                  "Pensil 2B, 4B untuk membuat sketsa dan menebali sketsa.",
                              color: myColor.secondaryColor,
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
                            text: "2.",
                            color: myColor.secondaryColor,
                            fontFamily: "Roboto",
                            fontSize: 14.0,
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          Expanded(
                            child: MyCustomText(
                              text:
                                  "Penghapus untuk menghapus bagian sketsa yang tidak diperlukan.",
                              color: myColor.secondaryColor,
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
                            text: "3.",
                            color: myColor.secondaryColor,
                            fontFamily: "Roboto",
                            fontSize: 14.0,
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          Expanded(
                            child: MyCustomText(
                              text: "Rautan untuk meruncingkan pensil.",
                              color: myColor.secondaryColor,
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
                            text: "4.",
                            color: myColor.secondaryColor,
                            fontFamily: "Roboto",
                            fontSize: 14.0,
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          Expanded(
                            child: MyCustomText(
                              text:
                                  "Bahan yang dibutuhkan untuk menggambar bagian bagian busana yaitu kertas sketsa atau kertas gambar.",
                              color: myColor.secondaryColor,
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
                      text: "B.",
                      color: myColor.secondaryColor,
                      fontFamily: "Montserrat",
                      fontSize: 16.0,
                      fontWeight: FontWeight.w800,
                    ),
                    SizedBox(
                      width: 8.0,
                    ),
                    Expanded(
                      child: MyCustomText(
                        text: "Kesehatan dan Keselamatan Kerja",
                        color: myColor.secondaryColor,
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
                  margin: const EdgeInsets.only(left: 24.0),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MyCustomText(
                            text: "1.",
                            color: myColor.secondaryColor,
                            fontFamily: "Roboto",
                            fontSize: 14.0,
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          Expanded(
                            child: MyCustomText(
                              text:
                                  "Pastikan pensil dalam keadaan runcing dan penghapus dalam keadaan bersih.",
                              color: myColor.secondaryColor,
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
                            text: "2.",
                            color: myColor.secondaryColor,
                            fontFamily: "Roboto",
                            fontSize: 14.0,
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          Expanded(
                            child: MyCustomText(
                              text:
                                  "Sebelum memulai pastikan tangan dalam keadaan bersih agar tidak mengotori gambar.",
                              color: myColor.secondaryColor,
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
                            text: "3.",
                            color: myColor.secondaryColor,
                            fontFamily: "Roboto",
                            fontSize: 14.0,
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          Expanded(
                            child: MyCustomText(
                              text:
                                  "Pada saat menggambar bersikaplah yang tegak dan jangan membungkuk.",
                              color: myColor.secondaryColor,
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
                            text: "4.",
                            color: myColor.secondaryColor,
                            fontFamily: "Roboto",
                            fontSize: 14.0,
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          Expanded(
                            child: MyCustomText(
                              text: "Mata jangan terlalu dekat dengan kertas.",
                              color: myColor.secondaryColor,
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
                            text: "5.",
                            color: myColor.secondaryColor,
                            fontFamily: "Roboto",
                            fontSize: 14.0,
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          Expanded(
                            child: MyCustomText(
                              text:
                                  "Menggambarlah dengan pencahayaan yang cukup terang.",
                              color: myColor.secondaryColor,
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
                  height: 36.0,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 24.0),
                    child: ButtonTheme(
                      height: 44.0,
                      minWidth: 160.0,
                      child: RaisedButton(
                        onPressed: () {
                          return Navigator.pushNamed(context, startdraw);
                        },
                        color: myColor.primaryColor,
                        child: MyCustomText(
                            text: "Prosedur Menggambar",
                            fontSize: 18.0,
                            fontFamily: "Montserrat",
                            color: myColor.textColorWhite),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)),
                      ),
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
