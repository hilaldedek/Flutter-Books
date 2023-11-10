// import 'package:flutter/material.dart';
// // ignore: unused_import
// import 'package:helloworld/books.dart';
// import 'package:helloworld/booksList.dart';

// // ignore: must_be_immutable
// class DeleteFunc extends StatefulWidget {
//   var index;
//   DeleteFunc(this.index, {super.key});

//   @override
//   State<DeleteFunc> createState() => DeleteFuncState();
// }

// class DeleteFuncState extends State<DeleteFunc> {
//   var liste = BooksList.booksList;

//   void delete(index) {
//     setState(() {
//       liste = BooksList.booksList;

//       liste.removeAt(index);
//     });
//   }

//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         ElevatedButton(
//           onPressed: () => {},
//           child: Icon(Icons.delete),
//         )
//       ],
//     );
//   }
// }
