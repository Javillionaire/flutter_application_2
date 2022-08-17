import 'package:flutter/material.dart';

import '../secontPage/secondPage.dart';

class FirstPage extends StatefulWidget {
  final int? data;
  const FirstPage({super.key, this.data});
  static const String route = '/firstpage';

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('First Page'),
          leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.of(context).pop(widget.data);
              }),
        ),
        body: Center(
            child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              widget.data.toString(),
              style: Theme.of(context).textTheme.displayLarge,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.of(context)
                    .pushNamed(SecondPage.route, arguments: {'data': 13});
              },
              color: Colors.yellow,
              child: const Text('Second'),
            )
          ],
        )));
  }
}
