// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:helloworld/detail.dart';
import 'package:helloworld/detailList.dart';

class PersonWidget extends StatelessWidget {
  List<Detail> detail = DetailList.detail;

  PersonWidget({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        TextField(
          decoration: InputDecoration(hintText: "detail"),
        ),
        Expanded(
            child: ListView.builder(
                itemCount: detail.length,
                itemBuilder: (context, index) => ListTile(
                      onTap: () => {},
                      title: Text(detail[index].name),
                      subtitle: Text(
                          "${detail[index].cost} - ${detail[index].year} "),
                    ))),
      ]),
    );
  }
}
