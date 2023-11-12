import 'package:flutter/material.dart';
import 'package:helloworld/authorWidget.dart';

import 'package:helloworld/booksList.dart';

import 'package:helloworld/likesWidget.dart';

import 'package:helloworld/detailWidget.dart';

void main() {
  runApp((const HilitoToDoApp()));
}

class HilitoToDoApp extends StatefulWidget {
  const HilitoToDoApp({super.key});

  @override
  State<HilitoToDoApp> createState() => HilitoToDoAppState();
}

class HilitoToDoAppState extends State<HilitoToDoApp> {
  var mode = Brightness.light;
  var text = "Light";
  void modeChange() {
    setState(() {
      if (mode == Brightness.dark) {
        mode = Brightness.light;
        text = "Light";
      } else {
        mode = Brightness.dark;
        text = "Dark";
      }
    });
  }

  int selectedIndex = 0;
  var list = BooksList.booksList;
  var pages = [
    PersonWidget(),
    LikesWidget(),
    AuthorWidget(),
  ];
  // var controller = TextEditingController();
  // void add() {
  //   setState(() {
  //     var text = controller.text;
  //     var bookEx = text.split("-");
  //     var newBook = Books(bookEx[0], bookEx[1]);
  //     BooksList.booksList.add(newBook);
  //     controller.text = "";
  //     search();
  //   });
  // }

  // void search() {
  //   setState(() {
  //     var searchItem = controller.text;
  //     if (searchItem == "") {
  //       list = BooksList.booksList;
  //     } else {
  //       list = BooksList.booksList;
  //       List<Books> newList = [];
  //       for (var item in list) {
  //         if (item.name.toLowerCase().contains(searchItem.toLowerCase())) {
  //           newList.add(item);
  //         }
  //       }
  //       list = newList;
  //     }
  //   });
  // }

  // void delete() {
  //   setState(() {
  //     list = BooksList.booksList;
  //     var deleteItem = controller.text;
  //     print(deleteItem);
  //     var index = list.indexWhere((element) => (element.name == deleteItem));
  //     print(index);
  //     list.removeAt(index);
  //     controller.text = "";
  //     search();
  //   });
  // }

  // void choiceItem(i) {
  //   controller.text = list[i].name;
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: ElevatedButton(child: Text("$text"), onPressed: modeChange),
        ),
        body: pages[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.money), label: "Cost"),
            BottomNavigationBarItem(
                icon: Icon(Icons.menu_book_outlined), label: "Books"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Author"),
          ],
          currentIndex: selectedIndex,
          onTap: (index) => setState(() {
            selectedIndex = index;
          }),
        ),
      ),
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color.fromARGB(255, 175, 76, 162),
          brightness: mode,
        ),
        textTheme: TextTheme(
          bodyMedium: TextStyle(
            fontFamily: "Arial light",
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
