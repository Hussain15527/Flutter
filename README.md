![alt text](https://i.ibb.co/qNzKWNj/Screenshot-2022-03-31-000551.jpg)

## Inside the main.dart file

In this we have created a delete function that is linked with a `TextButton` and when it is pressed, it deletes the current `card`

```dart
return author_book_template(
              delete: () {
                setState(() {
                  list.remove(e);
                });
              },
              e: e,
            );
          }).toList()),
```



author_book_template class is the class that basically makes card and output the content from the list about books and author.

We also see the delete(){} function which deletes the current book-author pair, 

## Inside the template.dart file

```Dart
final Link e;
  final Function() delete;
  author_book_template({required this.e, required this.delete});
```

It is important to note that, the constructer needs to be defined this way, since new version of flutter, works like this....



## How text box needs to be setup:

```Dart
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
```

