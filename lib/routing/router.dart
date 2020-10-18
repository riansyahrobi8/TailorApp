import 'package:flutter/material.dart';
import 'package:tailorapp/routing/const_routing.dart';
import 'package:tailorapp/screens/AboutApp.dart';
import 'package:tailorapp/screens/Dosbing.dart';
import 'package:tailorapp/screens/Evaluasi.dart';
import 'package:tailorapp/screens/Home.dart';
import 'package:tailorapp/screens/Kompetensi.dart';
import 'package:tailorapp/screens/Materi.dart';
import 'package:tailorapp/screens/Menus.dart';
import 'package:tailorapp/screens/Profile.dart';
import 'package:tailorapp/screens/Referensi.dart';
import 'package:tailorapp/screens/Settings.dart';
import 'package:tailorapp/screens/SplashScreen.dart';
import 'package:tailorapp/screens/Videos.dart';
import 'package:tailorapp/screens/materi/DefinitionScreen.dart';
import 'package:tailorapp/screens/materi/DrawScreen.dart';
import 'package:tailorapp/screens/materi/SilhouetteScreen.dart';
import 'package:tailorapp/screens/materi/submateri/StartDrawScreen.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case home:
        return MaterialPageRoute(builder: (_) => Home());
      case menus:
        return MaterialPageRoute(builder: (_) => Menus());
      case profile:
        return MaterialPageRoute(builder: (_) => Profile());
      case settings:
        return MaterialPageRoute(builder: (_) => Settings());
      case about:
        return MaterialPageRoute(builder: (_) => AboutApp());
      case kompetensi:
        return MaterialPageRoute(builder: (_) => Kompetensi());
      case materi:
        return MaterialPageRoute(builder: (_) => Materi());
      case video:
        return MaterialPageRoute(builder: (_) => Videos());
      case evaluasi:
        return MaterialPageRoute(builder: (_) => Evaluasi());
      case referensi:
        return MaterialPageRoute(builder: (_) => Referensi());
      case dosbing:
        return MaterialPageRoute(builder: (_) => Dosbing());
      case definition:
        return MaterialPageRoute(builder: (_) => DefinitionScreen());
      case silhouette:
        return MaterialPageRoute(builder: (_) => SilhouetteScreen());
      case draw:
        return MaterialPageRoute(builder: (_) => DrawScreen());
      case startdraw:
        return MaterialPageRoute(builder: (_) => StartDrawScreen());
      default:
        return MaterialPageRoute(builder: (_) => SplashScreen());
    }
  }
}
