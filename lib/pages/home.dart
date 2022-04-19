import 'package:flutter/material.dart';
import 'loading.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Center(child: SafeArea(child: Text("this is home screen"))),
        ElevatedButton(
            onPressed: () {
              Navigator.pushNamed((context), 'chose_location');
            },
            child: Text('choose location')),
        ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/');
            },
            child: Text("loading"))
      ]),
    );
  }
}
