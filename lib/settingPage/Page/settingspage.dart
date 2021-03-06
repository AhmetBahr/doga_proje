import 'package:doga_proje/settingPage/Page/headerPage.dart';
import 'package:doga_proje/settingPage/widget/widgetPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';

import '../../AnyPage/Change_Theme_Button.dart';
import 'actountPage.dart';
import 'notificationPage.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        padding: EdgeInsets.all(24),
        children: [
          SettingsGroup(
            title: 'General',
            children: <Widget>[
              ActountPage(),
              HeaderPage(),
              NotificationsPage(),
              buildLogout(),
              buildDeleteActtion(),
            ],
          ),
          const SizedBox(
            height: 32,
          ),
          SettingsGroup(title: 'FeedBack', children: <Widget>[
            const SizedBox(
              height: 8,
            ),
            buildReportBug(context),
            buildSendFeedback(context),
          ])
        ],
      )),
    );
  }
}

Widget ChangeTheme() => SimpleSettingsTile(
      title: 'Dark Mode',
      subtitle: '',
      leading: IconWidget(
        icon: Icons.monochrome_photos,
        color: Colors.deepPurpleAccent,
      ),
    );

Widget buildLogout() => SimpleSettingsTile(
      title: 'Logout',
      subtitle: '',
      leading: IconWidget(icon: Icons.logout, color: Colors.blue),
      onTap: () => {},
    );

Widget buildDeleteActtion() => SimpleSettingsTile(
      title: 'Delete',
      subtitle: '',
      leading: IconWidget(icon: Icons.delete, color: Colors.greenAccent),
      onTap: () => {},
    );

Widget buildReportBug(BuildContext context) => SimpleSettingsTile(
      title: 'Report A Bug',
      subtitle: '',
      leading: IconWidget(
        icon: Icons.bug_report,
        color: Colors.amber,
      ),
      onTap: () => {},
    );

Widget buildSendFeedback(BuildContext context) => SimpleSettingsTile(
      title: 'Send Feedback',
      subtitle: '',
      leading: IconWidget(
        icon: Icons.thumb_up,
        color: Colors.indigo,
      ),
      onTap: () => {},
    );
