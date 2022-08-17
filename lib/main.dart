import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages/firstPage/firstPage.dart';
import 'package:flutter_application_2/pages/homePage/homePage.dart';
import 'package:flutter_application_2/pages/secontPage/secondPage.dart';
import 'package:flutter_application_2/pages/thirdPage/thirdPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        HomePage.route: (context) => const HomePage(),
        FirstPage.route: (context) => const FirstPage(),
        SecondPage.route: (context) => const SecondPage(),
        ThirdPage.route: (context) => const ThirdPage()
      },
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.purple),
      initialRoute: HomePage.route,
    );
  }
}
