import 'package:flutter/material.dart';

class BlankPage extends StatelessWidget {
  String category, title, content;

  BlankPage(
      {required this.category, required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Category: ${category}"),
          Text("Title: ${title}"),
          Text("Content: ${content}"),
        ],
      ),
    );
  }
}
