import 'package:flutter/material.dart';
import 'package:doga_proje/settingPage/Page/settingspage.dart';

class Newprofile extends StatefulWidget {
  const Newprofile({Key? key}) : super(key: key);

  @override
  State<Newprofile> createState() => _NewprofileState();
}

class _NewprofileState extends State<Newprofile> {
  Widget textfield({required String hintText}) {
    return Material(
      elevation: 4,
      shadowColor: Colors.grey,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: TextField(
        decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(
              letterSpacing: 2,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            fillColor: Colors.white,
            filled: true,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide.none)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xff555555),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushNamed(context, "/Settings");
          },
        ),
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(5),
                child: Text(
                  "Profile",
                  style: TextStyle(
                      fontSize: 35,
                      letterSpacing: 1.5,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
              ),
              //Yuvarlak
              Container(
                //  padding: EdgeInsets.all(50.0),
                width: MediaQuery.of(context).size.width / 2,
                height: MediaQuery.of(context).size.width / 2,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 50),
                  shape: BoxShape.circle,
                  color: Colors.white,
                  /*image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('profile.png'),
                  ),*/
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding: EdgeInsets.all(5),
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      textfield(hintText: "UserName: "),
                      bosluk(context),
                      textfield(hintText: "Konum: "),
                      bosluk(context),
                      textfield(hintText: "Eposta: "),
                      bosluk(context),
                      textfield(hintText: "??"),
                      bosluk(context),
                      BT1(context),
                    ]),
              ),
            ],
          ),
          /*CustomPaint(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
            ),
            painter: headerCurvedContainer(),
          ),*/
        ],
      ),
    ); // Scaffold
  }
}
/*
class headerCurvedContainer extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = Color(0xff555555);
    Path path = Path()
      ..relativeLineTo(0, 100)
      ..quadraticBezierTo(size.width / 2, 205, size.width, 100)
      ..relativeLineTo(0, -150)
      ..close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}*/

Widget BT1(BuildContext context) => Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      color: Colors.grey.shade800,
      child: Column(
        children: [
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: [
              FlatButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/Settings");
                },
                child: const Text(
                  'Settings',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ],
      ),
    );

Widget bosluk(BuildContext context) => Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    );
