import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages/firstPage/firstPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  static const String route = '/home';
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int? data = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home Page'),
        ),
        body: Center(
            child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              data.toString(),
              style: Theme.of(context).textTheme.headline1,
            ),
            MaterialButton(
              onPressed: () async {
                data = await Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const FirstPage(data: 300)));
                setState(() {});
              },
              color: Colors.yellow,
              child: const Text('First'),
            )
          ],
        )));
  }
}
