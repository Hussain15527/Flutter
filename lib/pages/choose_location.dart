import 'package:flutter/material.dart';

class Locate extends StatefulWidget {
  const Locate({Key? key}) : super(key: key);

  @override
  State<Locate> createState() => _LocateState();
}

class _LocateState extends State<Locate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Location'),
        centerTitle: true,
      ),
    );
  }
}
