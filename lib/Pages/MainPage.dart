import 'package:flutter/material.dart';
import '../AddNews/NewsForWidge.dart';
import 'ListOrMaps.dart';
import 'ProfilPage.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final String _Detay = "Detay";
  Widget build(BuildContext context) {
    final text = MediaQuery.of(context).platformBrightness == Brightness.dark
        ? 'DarkTheme'
        : 'LightTheme';
    return Scaffold(
      appBar: AppBar(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        centerTitle: true,
        title: Text(
          'Water Wall',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.blue.shade800,
          ),
        ),
      ),
      body: ListView(
        children: [
          Tags(),
          news1(context),
          news2(context),
          news3(),
          news4(),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.blueAccent.shade400,
        elevation: 4.0,
        icon: Icon(
          Icons.add,
          color: Colors.pink.shade700,
        ),
        label: Text(
          'Haber Ekle',
          style: TextStyle(color: Colors.pink.shade700),
        ),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => NewsFormWidget(),
              ));
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

Widget Tags() => Container(
      margin: const EdgeInsets.only(bottom: 20),
      height: 60,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://static.dw.com/image/16207642_401.jpg%22"),
                    fit: BoxFit.cover),
                color: Colors.black,
                borderRadius: BorderRadius.all(Radius.circular(13.0))),
            width: 160,
          ),
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZ7fKmH1fTwDJ-zTCctnQz02DRIfznRryfDw&usqp=CAU%22"),
                    fit: BoxFit.cover),
                color: Colors.black,
                borderRadius: BorderRadius.all(Radius.circular(16.0))),
            width: 160,
          ),
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRpsOcCdDegZ5kx1yoIESYtSn0BTUe507p9iQ&usqp=CAU%22"),
                    fit: BoxFit.cover),
                color: Colors.black,
                borderRadius: BorderRadius.all(Radius.circular(16.0))),
            width: 160,
          ),
        ],
      ),
    );

Widget news1(context) => Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      margin: EdgeInsetsDirectional.all(7),
      color: Colors.grey.shade800,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 2),
            height: 250,
            width: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              shape: BoxShape.rectangle,
              border: Border.all(color: Colors.grey.shade800, width: 5),
              image: DecorationImage(
                  image: NetworkImage(
                      "https://foto.haberler.com/haber/2021/02/05/izmir-baraj-doluluk-oranlari-ne-kadar-5-subat-13909026_588_amp.jpg"),
                  fit: BoxFit.cover),
            ),
          ),
          Stack(
            children: [
              Text(
                "??stanbul'da barajlar??n doluluk oran?? y??zde 88,63'e ula??t??... ??zleyen: "
                'Eyl??l sonuna kadar su tehlikesi yok ama tasarruf ??art'
                ".",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          ButtonBar(
            alignment: MainAxisAlignment.start,
            children: [
              FlatButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/News1");
                },
                child: const Text(
                  'Detay',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ],
      ),
    );

Widget news2(context) => Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      margin: EdgeInsetsDirectional.all(7),
      color: Colors.grey.shade800,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 2),
            height: 250,
            width: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              shape: BoxShape.rectangle,
              border: Border.all(color: Colors.grey.shade800, width: 5),
              image: DecorationImage(
                  image: NetworkImage(
                      "https://i4.hurimg.com/i/hurriyet/75/866x494/6236e38c4e3fe0128863235e.jpg"),
                  fit: BoxFit.cover),
            ),
          ),
          Stack(
            children: [
              Text(
                "Su y??kseldi, Alibeyk??y Baraj?? ????ple doldu.",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ],
            //color: Colors.black87,
          ),
          ButtonBar(
            alignment: MainAxisAlignment.start,
            children: [
              FlatButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/Settings");
                },
                child: const Text(
                  'Detay',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ],
      ),
    );

Widget news3() => Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      margin: EdgeInsetsDirectional.all(7),
      color: Colors.grey.shade800,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 2),
            height: 250,
            width: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              shape: BoxShape.rectangle,
              border: Border.all(color: Colors.grey.shade800, width: 5),
              image: DecorationImage(
                image: NetworkImage(
                    "https://maabir.com/wp-content/uploads/2020/10/baraj-kapak.jpg"),
              ),
            ),
          ),
          Stack(
            children: [
              Text(
                "DS?? 10. B??lge M??d??r Yard??mc??s?? Faz??l Aslan da en b??y??k gayretlerinin daha ??ok su depolama tesisi yapmak oldu??unu s??yledi.",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.start,
              ),
            ],
            //color: Colors.black87,
          ),
          ButtonBar(
            alignment: MainAxisAlignment.start,
            children: [
              FlatButton(
                onPressed: () {},
                child: const Text(
                  'Detay',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ],
      ),
    );

Widget news4() => Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      margin: EdgeInsetsDirectional.all(7),
      color: Colors.grey.shade800,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 2),
            height: 250,
            width: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              shape: BoxShape.rectangle,
              border: Border.all(color: Colors.grey.shade800, width: 5),
              image: DecorationImage(
                  image: NetworkImage(
                      "https://trthaberstatic.cdn.wp.trt.com.tr/resimler/1722000/4-bin-yillik-hoyuk-adiyaman-trt-haber-1722373_2.jpg"),
                  fit: BoxFit.cover),
            ),
          ),
          Stack(
            children: [
              Text(
                "4 Eyl??l baraj??n??n su seviyesi y??kseliyor..",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.start,
              ),
            ],
          ),
          ButtonBar(
            alignment: MainAxisAlignment.start,
            children: [
              FlatButton(
                onPressed: () {},
                child: const Text(
                  'Detay',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ],
      ),
    );
