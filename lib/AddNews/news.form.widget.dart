import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../Materyal/ButtonWidget.dart';
import 'add.news.page.dart';

class NewsFormWidget extends StatefulWidget {
  final News? haber;
  final ValueChanged<News> onSavedHaberr;
  const NewsFormWidget({
    Key? key,
    this.haber,
    required this.onSavedHaberr,
    title,
  }) : super(key: key);
  @override
  _HaberFormWidgetState createState() => _HaberFormWidgetState();
}

class _HaberFormWidgetState extends State<NewsFormWidget> {
  final formKey = GlobalKey<FormState>();
  late TextEditingController controllerCategory;
  late TextEditingController controllerTitle;
  late TextEditingController controllerContent;

  @override
  void initState() {
    super.initState();
    initHaberr();
  }

  void initHaberr() {
    final Category = widget.haber == null ? '' : widget.haber!.Category;
    final Title = widget.haber == null ? '' : widget.haber!.Title;
    final Content = widget.haber == null ? '' : widget.haber!.Content;
    setState(() {
      controllerCategory = TextEditingController(text: Category);
      controllerTitle = TextEditingController(text: Title);
      controllerContent = TextEditingController(text: Content);
    });
  }

  @override
  Widget build(BuildContext context) => Form(
        key: formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            buildCategory(),
            const SizedBox(height: 15),
            buildTitle(),
            const SizedBox(height: 15),
            buildContent(),
            const SizedBox(height: 40),
            buildSubmit(),
          ],
        ),
      );

  Widget buildCategory() => TextFormField(
        controller: controllerCategory,
        decoration: InputDecoration(
          labelText: "Kategori",
          border: OutlineInputBorder(),
        ),
        validator: (value) =>
            value != null && value.isEmpty ? 'Kategori Giriniz(Doğa,Su)' : null,
      );

  Widget buildTitle() => TextFormField(
        controller: controllerTitle,
        decoration: InputDecoration(
          labelText: "Başlık",
          border: OutlineInputBorder(),
        ),
        validator: (value) =>
            value != null && value.isEmpty ? 'Başlık Giriniz' : null,
      );

  Widget buildContent() => TextFormField(
        controller: controllerContent,
        decoration: InputDecoration(
          labelText: "İçerik",
          border: OutlineInputBorder(),
        ),
        validator: (value) =>
            value != null && value.isEmpty ? 'Haber İçeriğini Yazınızs' : null,
      );
  Widget buildSubmit() => ButtonWidget(
        text: "Kaydet",
        onClicked: () {
          final form = formKey.currentState!;
          final isValid = form.validate();

          if (isValid) {
            final haber = News(
              Category: controllerCategory.text,
              Title: controllerTitle.text,
              Content: controllerContent.text,
            );
            widget.onSavedHaberr(haber);
          }
        },
      );
}
