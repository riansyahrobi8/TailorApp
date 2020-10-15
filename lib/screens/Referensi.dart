import 'package:flutter/material.dart';
import 'package:tailorapp/widgets/MyCustomText.dart';

class Referensi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFF9F9F9),
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          title: MyCustomText(
              text: "Referensi",
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
                text: "Referensi",
                fontFamily: "Montserrat",
                color: Color(0xFF505050),
                fontWeight: FontWeight.w800,
                fontSize: 22.0,
              ),
              SizedBox(
                height: 16.0,
              ),
              MyCustomText(
                text:
                    "Ernawati, dkk. (2008). Tata Busana untuk SMK Jilid 2. Jakarta : Direktorat Pembinaan Sekolah Menengah Kejuruan, Direktorat Jenderal Manajemen Pendidikan Dasar dan Menengah, Departemen Pendidikan Nasional.",
                color: Color(0xFF505050),
                fontFamily: "Roboto",
                fontSize: 14.0,
              ),
              SizedBox(
                height: 8.0,
              ),
              MyCustomText(
                text:
                    "TIM FT Universitas Negeri Surabaya. (2001). Menggambar Sketsa Busana Secara Kering. Jakarta: Departemen Pendidikan Nasional, Proyek Pengembangan Sistem dan Standar Pengelolaan SMK, Direktorat Pendidikan Menengah Kejuruan.",
                color: Color(0xFF505050),
                fontFamily: "Roboto",
                fontSize: 14.0,
              ),
              SizedBox(
                height: 8.0,
              ),
              MyCustomText(
                text:
                    "Widarwati, Sri. (1993) Dasar Desai 1. Yogyakarta: IKIP UNY",
                color: Color(0xFF505050),
                fontFamily: "Roboto",
                fontSize: 14.0,
              ),
              SizedBox(
                height: 8.0,
              ),
              MyCustomText(
                text:
                    "Hasanah, Uswatun dkk. (2011) Menggambar Busana. Jakarta: UNJ",
                color: Color(0xFF505050),
                fontFamily: "Roboto",
                fontSize: 14.0,
              ),
              SizedBox(
                height: 8.0,
              ),
              MyCustomText(
                text:
                    "Bestari, Afif Ghurub. (2011) Menggambar Busana dengan Teknik Kering. Klaten: Intan Sejati",
                color: Color(0xFF505050),
                fontFamily: "Roboto",
                fontSize: 14.0,
              ),
              SizedBox(
                height: 8.0,
              ),
              MyCustomText(
                text:
                    "Bunka Fashion Collage. (1991). Guide to 2160 Items Fashion Design. Jepang: Bunka Publishing Bureau",
                color: Color(0xFF505050),
                fontFamily: "Roboto",
                fontSize: 14.0,
              ),
            ],
          ),
        ));
  }
}
