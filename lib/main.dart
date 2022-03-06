import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'qoute.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Q> list = [
    Q('Don Quixote', 'Miguel de Cervantes'),
    Q('Lord of the Rings', 'J.R.R. Tolkien'),
    Q('Harry Potter and the Sorcerer\'s Stone', 'J.K. Rowling')
  ];

  Widget qoute_temp(qoute) {
    return Card(
      elevation: 10,
      shadowColor: Colors.red,
      color: Colors.grey[900],
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Text(
                '${qoute.name}',
                style: TextStyle(fontSize: 18,color: Colors.grey[400]),

              ),
            ),
            SizedBox(height: 10,),
            Center(
              child: Text(

                '${qoute.author}',
                style: TextStyle(fontSize: 16,color: Colors.grey[600]),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        shadowColor: Colors.red,
        backgroundColor: Colors.black,
        title: Text('Famous book'),
        centerTitle: true,
      ),
      backgroundColor: Colors.grey[850],
      body: Column(
        children: list.map((e) => qoute_temp(e)).toList(),
      ),
    );
  }
}
