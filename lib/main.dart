import 'package:flutter/material.dart';
import 'package:tailorapp/routing/const_routing.dart';
import 'package:tailorapp/routing/router.dart' as router;
import 'package:tailorapp/utils/customColor.dart' as myColor;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: myColor.primaryColor),
      title: 'Tailor App',
      initialRoute: splashScreen,
      onGenerateRoute: router.Router.generateRoute,
    );
  }
}
