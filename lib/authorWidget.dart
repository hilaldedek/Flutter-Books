import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:helloworld/author.dart';
import 'package:helloworld/authorList.dart';

// ignore: must_be_immutable
class AuthorWidget extends StatelessWidget {
  List<Author> authorlist = AuthorList.authorlist;

  AuthorWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Expanded(
          child: ListView.builder(
              itemCount: authorlist.length,
              itemBuilder: (context, index) => ListTile(
                    onTap: () => {},
                    title: Text(authorlist[index].name),
                    subtitle: Text(
                        "${authorlist[index].birthYear}-${authorlist[index].deathYear ?? '...'}"),
                  )))
    ]));
  }
}
