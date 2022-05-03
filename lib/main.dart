import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:water/AnyPage/theme_provider.dart';
import 'package:water/GoogleMaps/DenemeMap.dart';
import 'package:water/GoogleMaps/Lists.dart';
import 'package:water/GoogleSheet/SheetsApi.dart';
import 'package:water/Materyal/BottomNavigatorBar.dart';
import 'package:water/NewsPage/News1.dart';
import 'AnyPage/SheetsOrAdd.dart';
import 'GoogleSheet/SheetsPage.dart';
import 'NewsPage/News2.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SheetsApi.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
//     "/SheetPage": (context) => SheetsPage();
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => ThemeProvider(),
        builder: (context, _) {
          final themeProvider = Provider.of<ThemeProvider>(context);

          return MaterialApp(
              title: 'Water_Wall',
              home: MyBottomBar(),
              themeMode: themeProvider.themeMode,
              theme: Mythemes.lightTheme,
              darkTheme: Mythemes.darkTheme,
              initialRoute: "/",
              routes: {
                "/SheetsApi": (context) => SheetsPage(),
                "/Lists": (context) => kartliste(),
                "/GoogleMap": (context) => DenemeMap(),
                "/News1": (context) => News1(title: "Watter"),
                "/News2": (context) => News2(title: "Watter"),
                "/Lists": (context) => kartliste(),
                "/AddPages": (context) => AddPages(),
              });
        },
      );
} 
//Ahmet Bahar 
//Github; @AhmetBahr

//Sıray Tarım 
//Github; @siraytarim


/*theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(
            shadowColor: Colors.blue.shade800,
            elevation: 8,
            systemOverlayStyle: SystemUiOverlayStyle.light,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            backgroundColor: Colors.grey.shade800,
            centerTitle: false,
            titleTextStyle: TextStyle(color: Colors.lightBlueAccent)),
      */
