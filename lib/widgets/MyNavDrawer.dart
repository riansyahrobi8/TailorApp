import 'package:flutter/material.dart';
import 'package:tailorapp/screens/Profile.dart';

class MyNavDrawer extends StatelessWidget {
  const MyNavDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          _buildDrawerHeader(),
          _buildDrawerBodyItem(
              iconData: Icons.account_circle_outlined,
              title: "Profile",
              onTap: () {
                return Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Profile()));
              }),
          _buildDrawerBodyItem(
              iconData: Icons.settings_outlined,
              title: "Pengaturan",
              onTap: () {}),
          _buildDrawerBodyItem(
              iconData: Icons.info_outline_rounded,
              title: "Tentang Aplikasi",
              onTap: () {})
        ],
      ),
    );
  }

  DrawerHeader _buildDrawerHeader() {
    return DrawerHeader(
      decoration: BoxDecoration(color: Color(0xFF73DAE7)),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(72.0),
            child: Image.asset(
              'assets/images/profile.jpg',
              fit: BoxFit.cover,
              width: 72.0,
              height: 72.0,
            ),
          ),
          SizedBox(
            height: 16.0,
          ),
          Text(
            "Tri Annisa",
            style: TextStyle(
                fontFamily: "Montserrat",
                fontSize: 14.0,
                color: Colors.white,
                fontWeight: FontWeight.w900),
          ),
          Text(
            "triannisa06@gmail.com",
            style: TextStyle(
                fontFamily: "Montserrat",
                fontSize: 12.0,
                color: Colors.white,
                fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}

Widget _buildDrawerBodyItem(
    {IconData iconData, String title, GestureTapCallback onTap}) {
  return ListTile(
    title: Row(
      children: [
        Icon(
          iconData,
          color: Color(0xFF73DAE7),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Text(
            title,
            style: TextStyle(
                fontFamily: "Montserrat",
                color: Color(0xFF505050),
                fontWeight: FontWeight.w800),
          ),
        )
      ],
    ),
    onTap: onTap,
  );
}
