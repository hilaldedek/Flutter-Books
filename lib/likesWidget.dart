import 'package:flutter/material.dart';
import 'package:helloworld/books.dart';

// ignore: duplicate_import

// ignore: unused_import
import 'package:helloworld/booksList.dart';
// import 'package:helloworld/delete.dart';

// ignore: must_be_immutable

class LikesWidget extends StatelessWidget {
  List<Books> books = BooksList.booksList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        TextField(
          decoration: InputDecoration(hintText: "detail"),
        ),
        Expanded(
            child: ListView.builder(
                itemCount: books.length,
                itemBuilder: (context, index) => ListTile(
                      onTap: () => {},
                      title: Text(books[index].name),
                      subtitle: Text(books[index].author),
                    ))),
      ]),
    );
  }
}
