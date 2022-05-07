import 'package:doga_proje/settingPage/widget/widgetPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({Key? key}) : super(key: key);
  static const keyNews = 'key-News';
  static const keyActivity = 'key-activity';
  static const keyNewsLetter = 'key-newsletter';
  static const keyAppUpdates = 'key-appUpdates';

  @override
  Widget build(BuildContext context) => SimpleSettingsTile(
        title: 'Notification',
        subtitle: 'Newsletter, App Updates',
        leading: IconWidget(
          icon: Icons.notifications,
          color: Colors.redAccent,
        ),
        child: SettingsScreen(children: <Widget>[
          buildNews(),
          /*  buildActivity(),
          buildNewsLetter(),
          buildAppUpdates(),*/
        ]),
      );
}

Widget buildNews() => SwitchSettingsTile(
      title: 'Accoount Activity',
      settingKey: 'key-News',
      leading: IconWidget(
        icon: Icons.person,
        color: Colors.orange,
      ),
    );
