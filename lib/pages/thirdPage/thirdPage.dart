import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages/homePage/homePage.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({super.key});
  static const String route = '/thirdpage';

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  int? data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Third Page'),
      ),
      body: Center(
          child: MaterialButton(
        onPressed: () {
          Navigator.of(context).popUntil(ModalRoute.withName(HomePage.route));
        },
        color: Colors.red,
        child: const Text('Home'),
      )),
    );
  }
}
