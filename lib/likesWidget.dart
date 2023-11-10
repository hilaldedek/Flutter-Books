import 'package:flutter/material.dart';

class LikesWidget extends StatefulWidget {
  @override
  State<LikesWidget> createState() => LikesWidgetState();
}

class LikesWidgetState extends State<LikesWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Likes Widget"),
      ],
    );
  }
}
