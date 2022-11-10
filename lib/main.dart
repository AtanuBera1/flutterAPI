import "package:flutter/material.dart";
import 'package:layout/pages/home.dart';
import 'package:layout/pages/login.dart';
import 'package:layout/theming/theme.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyTheme.darkTheme(context),
      routes: {
        "/": (context) => LoginPage(),
        "home": (context) => myHomePage(),
      },
      debugShowCheckedModeBanner: false,
      title: "My flutter",
      // home: LoginPage(),
    );
  }
}
