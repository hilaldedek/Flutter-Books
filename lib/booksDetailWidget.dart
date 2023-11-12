import 'package:flutter/material.dart';
import 'package:helloworld/author.dart';
import 'package:helloworld/authorList.dart';
import 'package:helloworld/books.dart';
import 'package:helloworld/booksList.dart';
import 'package:helloworld/detail.dart';
import 'package:helloworld/detailList.dart';

// ignore: must_be_immutable
class booksDetailWidget extends StatelessWidget {
  final int veri;
  booksDetailWidget({required this.veri});
  List<Books> books = BooksList.booksList;
  List<Author> authorlist = AuthorList.authorlist;
  List<Detail> detail = DetailList.detail;
  @override
  Widget build(BuildContext context) {
    print("geldim index= ${veri}");
    return Scaffold(
      body: Column(children: [
        Center(
          child: Card(
            elevation: 50,
            shadowColor: Colors.black,
            color: Colors.grey,
            child: Column(
              children: [
                SizedBox(
                  width: 300,
                  height: 500,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.grey[200],
                          radius: 108,
                          child: const CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://media.geeksforgeeks.org/wp-content/uploads/20210101144014/gfglogo.png"), //NetworkImage
                            radius: 100,
                          ), //CircleAvatar
                        ), //CircleAvatar
                        const SizedBox(
                          height: 10,
                        ),
                        ListView(
                          children: const <Widget>[
                            ListTile(
                              leading: Icon(Icons.book_outlined),
                              title: Text("KİTAP ADI"),
                              // ${books[veri].name}
                            ),
                            ListTile(
                              leading: Icon(Icons.book_outlined),
                              title: Text("YAZAR"),
                              // ${books[veri].author}
                            ),
                            ListTile(
                              leading: Icon(Icons.book_outlined),
                              title: Text("YAZARIN BİRTH YEAR- DEATH YEAR"),
                              // ${authorlist[veri].birthYear}-${authorlist[veri].deathYear}
                            ),
                            ListTile(
                              leading: Icon(Icons.date_range),
                              title: Text("PUBLİCATİON DATE"),
                              // ${detail[veri].year}
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
