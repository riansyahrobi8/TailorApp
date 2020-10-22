import 'package:flutter/material.dart';
import 'package:tailorapp/routing/const_routing.dart';
import 'package:tailorapp/screens/DetailImage.dart';
import 'package:tailorapp/utils/customColor.dart' as myColor;
import 'package:tailorapp/widgets/MyCustomText.dart';

class StartDrawScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: myColor.backgroundColor,
        appBar: AppBar(
          iconTheme: IconThemeData(color: myColor.textColorWhite),
          title: MyCustomText(
              text: "Prosedur Menggambar",
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
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MyCustomText(
                      text: "1.",
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
                        text: "Menggambar garis leher",
                        color: myColor.secondaryColor,
                        fontFamily: "Montserrat",
                        fontSize: 16.0,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8.0),
                Container(
                  margin: const EdgeInsets.only(left: 16.0),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MyCustomText(
                            text: "-",
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
                                  "Buatlah garis tipis di sekitar bundaran leher melalui kedua bahu.",
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
                            text: "-",
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
                                  "Setelah terbentuk sesuai dengan keinginan kemudian pertebal bagian gambar garis leher.",
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
                      GestureDetector(
                        child: Hero(
                          tag: "draw1",
                          child: Card(
                            child: Image.asset(
                                "assets/images/materi/submateri/draw1.png",
                                width: double.infinity,
                                fit: BoxFit.cover),
                          ),
                        ),
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => DetailImage(
                                      tag: draw,
                                      image: "submateri/draw1.png",
                                    ))),
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
                      text: "2.",
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
                        text: "Menggambar kerah",
                        color: myColor.secondaryColor,
                        fontFamily: "Montserrat",
                        fontSize: 16.0,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8.0),
                Container(
                  margin: const EdgeInsets.only(left: 16.0),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MyCustomText(
                            text: "-",
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
                                  "Perhatikan terlebih dahulu bentuk kerah yang akan digambar.",
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
                            text: "-",
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
                                  "Buat garis halus di sekitar leher dan mengkurva di sekeliling bagian belakang leher.",
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
                            text: "-",
                            color: myColor.secondaryColor,
                            fontFamily: "Roboto",
                            fontSize: 14.0,
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          Expanded(
                            child: MyCustomText(
                              text: "Gambar bentuk kerah sesuai keinginan.",
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
                            text: "-",
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
                                  "Selesaikan detail-detailnya dan pertebal hasil jadinya.",
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
                      GestureDetector(
                        child: Hero(
                          tag: "draw2",
                          child: Card(
                            child: Image.asset(
                                "assets/images/materi/submateri/draw2.png",
                                width: double.infinity,
                                fit: BoxFit.cover),
                          ),
                        ),
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => DetailImage(
                                      tag: draw,
                                      image: "submateri/draw2.png",
                                    ))),
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
                      text: "3.",
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
                        text: "Menggambar lengan",
                        color: myColor.secondaryColor,
                        fontFamily: "Montserrat",
                        fontSize: 16.0,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8.0),
                Container(
                  margin: const EdgeInsets.only(left: 16.0),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MyCustomText(
                            text: "-",
                            color: myColor.secondaryColor,
                            fontFamily: "Roboto",
                            fontSize: 14.0,
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          Expanded(
                            child: MyCustomText(
                              text: "Tentukan panjang lengan pada tangan.",
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
                            text: "-",
                            color: myColor.secondaryColor,
                            fontFamily: "Roboto",
                            fontSize: 14.0,
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          Expanded(
                            child: MyCustomText(
                              text: "Gambar model sesuai yang diinginkan.",
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
                            text: "-",
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
                                  "Buatlah drape atau efek berkerut sesuai arah atau bentuk lengan.",
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
                      GestureDetector(
                        child: Hero(
                          tag: "draw3",
                          child: Card(
                            child: Image.asset(
                                "assets/images/materi/submateri/draw3.png",
                                width: double.infinity,
                                fit: BoxFit.cover),
                          ),
                        ),
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => DetailImage(
                                      tag: draw,
                                      image: "submateri/draw3.png",
                                    ))),
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
                      text: "4.",
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
                        text: "Menggambar manset",
                        color: myColor.secondaryColor,
                        fontFamily: "Montserrat",
                        fontSize: 16.0,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8.0),
                Container(
                  margin: const EdgeInsets.only(left: 16.0),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MyCustomText(
                            text: "-",
                            color: myColor.secondaryColor,
                            fontFamily: "Roboto",
                            fontSize: 14.0,
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          Expanded(
                            child: MyCustomText(
                              text: "Tentukan model dan lebar manset.",
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
                            text: "-",
                            color: myColor.secondaryColor,
                            fontFamily: "Roboto",
                            fontSize: 14.0,
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          Expanded(
                            child: MyCustomText(
                              text: "Buatlah model manset pada ujung lengan.",
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
                            text: "-",
                            color: myColor.secondaryColor,
                            fontFamily: "Roboto",
                            fontSize: 14.0,
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          Expanded(
                            child: MyCustomText(
                              text: "Selesaikan detail-detailnya.",
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
                      GestureDetector(
                        child: Hero(
                          tag: "draw4",
                          child: Card(
                            child: Image.asset(
                                "assets/images/materi/submateri/draw4.png",
                                width: double.infinity,
                                fit: BoxFit.cover),
                          ),
                        ),
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => DetailImage(
                                      tag: draw,
                                      image: "submateri/draw4.png",
                                    ))),
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
                      text: "5.",
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
                        text: "Menggambar saku",
                        color: myColor.secondaryColor,
                        fontFamily: "Montserrat",
                        fontSize: 16.0,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8.0),
                Container(
                  margin: const EdgeInsets.only(left: 16.0),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MyCustomText(
                            text: "-",
                            color: myColor.secondaryColor,
                            fontFamily: "Roboto",
                            fontSize: 14.0,
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          Expanded(
                            child: MyCustomText(
                              text: "Tentukan letak saku dan ukuran saku.",
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
                            text: "-",
                            color: myColor.secondaryColor,
                            fontFamily: "Roboto",
                            fontSize: 14.0,
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          Expanded(
                            child: MyCustomText(
                              text: "Gambar model saku sesuai keinginan.",
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
                            text: "-",
                            color: myColor.secondaryColor,
                            fontFamily: "Roboto",
                            fontSize: 14.0,
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          Expanded(
                            child: MyCustomText(
                              text: "Selesaikan detail-detailnya.",
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
                      GestureDetector(
                        child: Hero(
                          tag: "draw5",
                          child: Card(
                            child: Image.asset(
                                "assets/images/materi/submateri/draw5.png",
                                width: double.infinity,
                                fit: BoxFit.cover),
                          ),
                        ),
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => DetailImage(
                                      tag: draw,
                                      image: "submateri/draw5.png",
                                    ))),
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
                      text: "6.",
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
                        text: "Menggambar belahan",
                        color: myColor.secondaryColor,
                        fontFamily: "Montserrat",
                        fontSize: 16.0,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8.0),
                Container(
                  margin: const EdgeInsets.only(left: 16.0),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MyCustomText(
                            text: "-",
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
                                  "Tentukan letak belahan pada rancangan busana.",
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
                            text: "-",
                            color: myColor.secondaryColor,
                            fontFamily: "Roboto",
                            fontSize: 14.0,
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          Expanded(
                            child: MyCustomText(
                              text: "Gambar belahan sesuai model.",
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
                            text: "-",
                            color: myColor.secondaryColor,
                            fontFamily: "Roboto",
                            fontSize: 14.0,
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          Expanded(
                            child: MyCustomText(
                              text: "Buat pengikat busana yang digunakan.",
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
                            text: "-",
                            color: myColor.secondaryColor,
                            fontFamily: "Roboto",
                            fontSize: 14.0,
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          Expanded(
                            child: MyCustomText(
                              text: "Selesaikan detal-detailnya.",
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
                      GestureDetector(
                        child: Hero(
                          tag: "draw6",
                          child: Card(
                            child: Image.asset(
                                "assets/images/materi/submateri/draw6.png",
                                width: double.infinity,
                                fit: BoxFit.cover),
                          ),
                        ),
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => DetailImage(
                                      tag: draw,
                                      image: "submateri/draw6.png",
                                    ))),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
