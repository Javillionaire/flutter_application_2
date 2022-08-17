import 'package:flutter/material.dart';

import '../thirdPage/thirdPage.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});
  static const String route = '/secondpage';

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  late int? data;
  @override
  void didChangeDependencies() {
    Map<String, dynamic> map =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    if (map.containsKey('data') && map['data'] != null) {
      data = map['data'];
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Second Page')),
      body: Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            data.toString(),
            style: Theme.of(context).textTheme.displayLarge,
          ),
          MaterialButton(
            onPressed: () {
              Navigator.of(context).pushNamed(ThirdPage.route);
            },
            color: Colors.yellow,
            child: const Text('Third'),
          )
        ],
      )),
    );
  }
}
