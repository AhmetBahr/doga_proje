import 'package:doga_proje/settingPage/widget/widgetPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';

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

Widget buildLogout() => SimpleSettingsTile(
      title: 'Logout',
      subtitle: '',
      leading: IconWidget(icon: Icons.logout, color: Colors.blue),
      onTap: () => {},
    );

Widget buildDeleteActtion() => SimpleSettingsTile(
      title: 'Logout',
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
