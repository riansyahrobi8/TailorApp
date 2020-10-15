import 'package:flutter/material.dart';
import 'package:tailorapp/widgets/MyCustomText.dart';

class MyDrawerHeader extends StatelessWidget {
  const MyDrawerHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      decoration: BoxDecoration(color: Color(0xFF73DAE7)),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(72.0),
            child: Image.asset(
              'assets/images/logo.jpg',
              fit: BoxFit.cover,
              width: 72.0,
              height: 72.0,
            ),
          ),
          SizedBox(
            height: 16.0,
          ),
          MyCustomText(
              text: "Media Pemebelajaran",
              fontFamily: "Montserrat",
              fontSize: 14.0,
              color: Colors.white,
              fontWeight: FontWeight.w800),
          MyCustomText(
              text: "Bagian & Bentuk Busana",
              fontFamily: "Montserrat",
              fontSize: 12.0,
              color: Colors.white,
              fontWeight: FontWeight.w500),
        ],
      ),
    );
  }
}
