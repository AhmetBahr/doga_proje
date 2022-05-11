import 'package:doga_proje/AddNews/news.form.widget.dart';
import 'package:doga_proje/settingPage/Page/headerPage.dart';
import 'package:doga_proje/settingPage/Page/settingspage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';
import 'package:provider/provider.dart';
import 'AnyPage/SheetOrAdd.dart';
import 'AnyPage/theme_provider.dart';
import 'GoogleMaps/googleMapsHomePage.dart';
import 'GoogleSheet/SheetApi.dart';
import 'GoogleSheet/SheetsPagess.dart';
import 'Materyal/BottomNavigotorBar.dart';
import 'NewsPage/News1.dart';
import 'NewsPage/News2.dart';
import 'Pages/ListOrMaps.dart';
import 'Pages/ProfilPage.dart';
import 'Pages/MainPage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SheetsApi.init();
  await Settings.init(cacheProvider: SharePreferenceCache());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  get onSavedHaberr => null;

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => ThemeProvider(),
        builder: (context, _) {
          final themeProvider = Provider.of<ThemeProvider>(context);
          final isDarkMode =
              Settings.getValue<bool>(HeaderPage.keyDarkMode, true);

          return ValueChangeObserver<bool>(
              cacheKey: HeaderPage.keyDarkMode,
              defaultValue: true,
              builder: (_, isDarkMode, __) => MaterialApp(
                      title: 'Water_Wall',
                      home: GoogleHomePage(),
                      themeMode: themeProvider.themeMode,
                      theme: isDarkMode
                          ? ThemeData.dark().copyWith(
                              primaryColor: Colors.teal,
                              accentColor: Colors.white,
                              scaffoldBackgroundColor:
                                  Color.fromARGB(0, 5, 18, 28),
                              canvasColor: Color.fromARGB(0, 5, 18, 28))
                          : ThemeData.light().copyWith(
                              primaryColor: Colors.teal,
                              accentColor: Colors.white,
                              scaffoldBackgroundColor: Colors.white,
                              canvasColor: Colors.white),
                      initialRoute: "/",
                      routes: {
                        "/SheetsApi": (context) => SheetsPage(),
                        "/News1": (context) => News1(),
                        "/News2": (context) => News2(),
                        "/AddPages": (context) => AddPages(),
                        "/NewsPage": (context) =>
                            NewsFormWidget(onSavedHaberr: onSavedHaberr),
                        "/Settings": (context) => SettingsPage(),
                      }));
        },
      );
}


/*

 return MaterialApp(
              title: 'Water_Wall',
              home: SettingsPage(),
              themeMode: themeProvider.themeMode,
              theme: Mythemes.lightTheme,
              darkTheme: Mythemes.darkTheme,
              initialRoute: "/",
              routes: {
                "/SheetsApi": (context) => SheetsPage(),
                "/News1": (context) => News1(),
                "/News2": (context) => News2(),
                "/AddPages": (context) => AddPages(),
                "/NewsPage": (context) =>
                    NewsFormWidget(onSavedHaberr: onSavedHaberr),
                "/settings": (context) => SettingsPage(),
              });

              */