import 'package:flutter/material.dart';
import 'package:helloworld/books.dart';
import 'package:helloworld/booksDetailWidget.dart';

// ignore: duplicate_import

// ignore: unused_import
import 'package:helloworld/booksList.dart';
// import 'package:helloworld/delete.dart';

// ignore: must_be_immutable

// ignore: must_be_immutable
class LikesWidget extends StatelessWidget {
  List<Books> books = BooksList.booksList;

  LikesWidget({super.key});

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
                      onTap: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    booksDetailWidget(veri: index)))
                      },
                      title: Text(books[index].name),
                      subtitle: Text(books[index].author),
                    ))),
      ]),
    );
  }
}
