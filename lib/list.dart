import 'package:flutter/material.dart';
import 'package:helloworld/books.dart';
// ignore: duplicate_import
import 'package:helloworld/books.dart';
// ignore: unused_import
import 'package:helloworld/booksList.dart';
// import 'package:helloworld/delete.dart';

// ignore: must_be_immutable
class ListExample extends StatelessWidget {
  List<Books> listEx = [];
  // ignore: prefer_typing_uninitialized_variables

  var choiceFunc;
  ListExample(this.listEx, this.choiceFunc, {super.key});

  get index => null;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: listEx.length,
        itemBuilder: (context, i) {
          return Column(
            children: [
              Container(
                child: ListTile(
                  iconColor: Color.fromARGB(255, 70, 7, 64),
                  isThreeLine: true,
                  title: Container(
                    padding: EdgeInsets.only(left: 10),
                    height: 50,
                    color: Color.fromARGB(149, 69, 12, 80),
                    child: Row(children: [
                      // ignore: prefer_const_constructors
                      Text('${listEx[i].name}'),
                      Text("  -  "),
                      Text(listEx[i].author),
                    ]),
                  ),
                  subtitle: Container(
                    padding: EdgeInsets.only(left: 50),
                    height: 30,
                    color: Color.fromARGB(119, 69, 23, 80),
                    child: Row(
                      children: [
                        Text(listEx[i].cost),
                        Text("\$"),
                      ],
                    ),
                  ),
                  leading: const Icon(Icons.book),
                  onTap: () => choiceFunc(i),
                ),
              ),
              // Expanded(child: DeleteFunc(index)),
            ],
          );
        });
  }
}
