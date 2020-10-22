import 'package:flutter/material.dart';
import 'package:tailorapp/widgets/MyCustomProfile.dart';
import 'package:tailorapp/widgets/MyCustomText.dart';
import 'package:tailorapp/utils/customColor.dart' as myColor;

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: myColor.backgroundColor,
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          title: MyCustomText(
              text: "Profile",
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
              children: [
                MyCustomProfile(
                  title: "Mahasiswa",
                  image: "profile.jpg",
                  nip: "14513244022",
                  name: "Tri Annisa",
                  email: "triannisa06@gmail.com",
                  emailIcon: Icons.email_outlined,
                  address:
                      "Sembuh, RT: 02 RW: 04, Kebon Gunung, Laonao, Purworejo",
                  ig: "@nisa307",
                  igIcon: Icons.camera_alt_outlined,
                  majors: "Pendidikan Teknik Busana S1 UNY",
                ),
                SizedBox(
                  height: 24.0,
                ),
                MyCustomProfile(
                  title: "Dosen Pembimbing",
                  image: "dosbing.jpg",
                  nip: "197202081998021001",
                  name: "Triyanto, S.Sn., M.A.",
                  email: "triyanto@uny.ac.id",
                  emailIcon: Icons.email_outlined,
                  address: "",
                  ig: "",
                  igIcon: null,
                  majors:
                      "Pendidikan Teknik Boga dan Busana Universitas Negeri Yogyakarta",
                ),
              ],
            ),
          ),
        ));
  }
}
