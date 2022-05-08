import 'package:doga_proje/settingPage/widget/widgetPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';

class HeaderPage extends StatelessWidget {
  const HeaderPage({Key? key}) : super(key: key);
  static const keyDarkMode = 'key-Dark-mode';

  @override
  Widget build(BuildContext context) => Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          //buildUser(context),
          buildDarkMode(),
        ],
      );
}

Widget buildDarkMode() {
  var keyDarkMode = 'key-Dark-mode';
  return SwitchSettingsTile(
    settingKey: keyDarkMode,
    leading: IconWidget(
      icon: Icons.dark_mode,
      color: Color(0xFF642ef3),
    ),
    title: 'Dark Mode',
    onChange: (_) {},
  );
}
