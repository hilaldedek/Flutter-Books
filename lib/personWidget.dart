import 'package:flutter/widgets.dart';
import 'package:helloworld/list.dart';

class PersonWidget extends StatefulWidget {
  @override
  State<PersonWidget> createState() => PersonWidgetState();
}

class PersonWidgetState extends State<PersonWidget> {
  ListExample(this.listEx, this.choiceFunc, {super.key});

  Widget build(BuildContext context) {
    return ListView.builder(itemCount: listEx ,itemBuilder: itemBuilder)
  
  }
}
