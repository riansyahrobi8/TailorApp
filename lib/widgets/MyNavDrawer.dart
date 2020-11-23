import 'package:flutter/material.dart';
import 'package:tailorapp/routing/const_routing.dart';
import 'package:tailorapp/widgets/MyDrawerBodyItem.dart';
import 'package:tailorapp/widgets/MyDrawerHeader.dart';

class MyNavDrawer extends StatelessWidget {
  const MyNavDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          MyDrawerHeader(),
          MyDrawerBodyItem(
              iconData: Icons.account_circle_outlined,
              title: "Profile",
              onTap: () => Navigator.pushNamed(context, profile)),
          MyDrawerBodyItem(
              iconData: Icons.settings_outlined,
              title: "Pengaturan",
              onTap: () => Navigator.pushNamed(context, settings)),
          MyDrawerBodyItem(
              iconData: Icons.info_outline_rounded,
              title: "Tentang Aplikasi",
              onTap: () => Navigator.pushNamed(context, about))
        ],
      ),
    );
  }
}
