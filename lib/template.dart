import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main.dart';

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
