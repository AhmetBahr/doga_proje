import 'package:flutter/material.dart';
import 'news.form.widget.dart';

class PageNews extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
        ),
        body: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(32),
          child: SingleChildScrollView(
            child: NewsFormWidget(
              onSavedHaberr: (haber) async {},
            ),
          ),
        ),
      );
}
