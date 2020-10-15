import 'package:flutter/material.dart';
import 'package:tailorapp/routing/const_routing.dart';
import 'package:tailorapp/screens/Home.dart';
import 'package:tailorapp/screens/Menus.dart';
import 'package:tailorapp/screens/Profile.dart';
import 'package:tailorapp/screens/SplashScreen.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case home:
        return MaterialPageRoute(builder: (_) => Home());
      case menus:
        return MaterialPageRoute(builder: (_) => Menus());
      case profile:
        return MaterialPageRoute(builder: (_) => Profile());
      default:
        return MaterialPageRoute(builder: (_) => SplashScreen());
    }
  }
}
