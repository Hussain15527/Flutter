import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'template.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

//custume class for book to author map
class Link {
  String? book;
  String? author;
  int? time;
  Link(String book, String author, int time) {
    this.author = author;
    this.book = book;
    this.time = time;
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //Map<String, String> list = {"abc": "me", "love of life": "romantic"};
  List<Link> list = [
    Link("harry porter", "jk rowling", 1890),
    Link("lord of the rings", "somone", 9021),
    Link("bible", "god", 8122)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade900,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black,
          title: const Text(
            'Awsome ',
          ),
        ),
        body: Container(
          child: Column(
              children: list.map((e) {
            return author_book_template(
              delete: () {
                setState(() {
                  list.remove(e);
                });
              },
              e: e,
            );
          }).toList()),
        ));
  }
}
