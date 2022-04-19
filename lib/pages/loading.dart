import 'package:flutter/material.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void todo() async {
    String name = await Future.delayed(Duration(seconds: 2), () {
      return "mujtaba hussain";
    });
    print("the name of the person is ${name}");
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    todo();
  }

  @override
  Widget build(BuildContext context) {
    print(("this is build state"));
    return Scaffold(
      appBar: AppBar(
        title: Text("loading screen"),
      ),
      body: Column(
        children: [
          SafeArea(child: Text("Hello")),
        ],
      ),
    );
  }
}
