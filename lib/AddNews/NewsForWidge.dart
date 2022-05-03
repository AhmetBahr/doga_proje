import 'package:flutter/material.dart';

import 'BlangPage.dart';

class NewsFormWidget extends StatefulWidget {
  const NewsFormWidget({
    Key? key,
  }) : super(key: key);
  @override
  _HaberFormWidgetState createState() => _HaberFormWidgetState();
}

class _HaberFormWidgetState extends State<NewsFormWidget> {
  TextEditingController _category = new TextEditingController();
  TextEditingController _title = new TextEditingController();
  TextEditingController _content = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
              padding: const EdgeInsets.all(14),
              child: TextField(
                controller: _category,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "Category"),
              )),
          Padding(
              padding: const EdgeInsets.all(14),
              child: TextField(
                controller: _title,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "Title"),
              )),
          Padding(
              padding: const EdgeInsets.all(14),
              child: TextField(
                controller: _content,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "Content"),
              )),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) => BlankPage(
                          category: _category.text,
                          title: _title.text,
                          content: _content.text)),
                );
              },
              child: Text("Save The News"))
        ],
      ),
    );
  }
}
