import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Tuslar extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  var add, search, delete;
  Tuslar(
      {super.key,
      required this.add,
      required this.search,
      required this.delete});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: add,
              child: const Icon(Icons.add),
            ),
          ),
        ),
        Container(
          child: Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: search,
                child: const Icon(Icons.search),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: delete,
              child: const Icon(Icons.delete),
            ),
          ),
        ),
      ],
    );
  }
}
