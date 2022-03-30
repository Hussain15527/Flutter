import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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

class author_book_template extends StatelessWidget {
  final Link e;
  final Function() delete;
  author_book_template({required this.e, required this.delete});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 10,
        shadowColor: Colors.red,
        margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
        color: Colors.grey.shade900,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Text(
                '${e?.book}->',
                style: TextStyle(color: Colors.grey.shade700, fontSize: 28),
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: 30),
                Container(
                    child: Text(
                  '${e?.author}',
                  style: TextStyle(color: Color.fromARGB(221, 182, 149, 149)),
                )),
                SizedBox(
                  width: 10,
                ),
                TextButton(
                  onPressed: delete,
                  child: Column(
                    children: [
                      Icon(
                        Icons.delete,
                        color: Colors.red,
                      ),
                      Text(
                        "delete",
                        style: TextStyle(color: Colors.black),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
