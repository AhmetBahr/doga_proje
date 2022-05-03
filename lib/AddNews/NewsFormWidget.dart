import 'package:flutter/material.dart';
import 'BlankPage.dart';

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
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
              padding:
                  EdgeInsets.only(top: 100, left: 20, right: 20, bottom: 10),
              child: TextField(
                controller: _category,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "Category"),
              )),
          Padding(
              padding:
                  EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
              child: TextField(
                controller: _title,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "Title"),
              )),
          Padding(
              padding:
                  EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
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
            child: Text("Save The News"),
          ),
        ],
      ),
    );
  }
}
