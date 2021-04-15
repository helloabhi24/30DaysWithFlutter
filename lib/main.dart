import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/home_page.dart';
import 'package:flutter_catalog/pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: HomePage(),
      themeMode: ThemeMode.dark,
      theme: ThemeData(primaryColor: Colors.brown),
      darkTheme: ThemeData(
        brightness: Brightness.light,
      ),
      initialRoute: "/home",
      routes: {
        "/home": (context) => HomePage(),
        "/": (context) => LoginPage(),
      },
    );
  }
}
