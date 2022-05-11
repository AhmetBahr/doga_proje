import 'package:doga_proje/settingPage/widget/widgetPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';

class ActountPage extends StatelessWidget {
  static const keyLanguage = 'key-language';
  static const keyLocation = 'key-locatino';
  static const keyPassword = 'key-password';

  @override
  Widget build(BuildContext context) => SimpleSettingsTile(
        title: 'Account Settings',
        subtitle: 'Privacy, Secrity, Language',
        leading: IconWidget(
          icon: Icons.person,
          color: Colors.green,
        ),
        child: SettingsScreen(
          title: 'Account Settings',
          children: <Widget>[
            buildLangue(),
            buildLocation(),
            buildPassword(),
            buildPrivacy(context),
            buildSecurity(context),
            buildAccountInfo(context),
          ],
        ),
      );

  Widget buildLangue() {
    return DropDownSettingsTile(
      title: 'Language',
      settingKey: keyLanguage,
      selected: 1,
      values: <int, String>{
        1: '1',
        2: '2',
        3: '3',
        4: '4',
      },
      onChange: (language) {},
    );
  }

  Widget buildLocation() {
    var keyLocation = 'key-locatino';
    return TextInputSettingsTile(
      title: 'Location',
      settingKey: keyLocation,
      initialValue: 'Australian',
      onChange: (location) {},
    );
  }

  Widget buildPassword() {
    return TextInputSettingsTile(
      title: 'Password',
      settingKey: keyPassword,
      obscureText: true,
      validator: (password) => password != null && password.length >= 6
          ? null
          : 'Enter 6 characters',
    );
  }

  Widget buildPrivacy(BuildContext context) => SimpleSettingsTile(
        title: 'Privacy',
        subtitle: '',
        leading: IconWidget(
          icon: Icons.lock,
          color: Colors.green,
        ),
        onTap: () => {},
      );

  Widget buildSecurity(BuildContext context) => SimpleSettingsTile(
        title: 'Privacy',
        subtitle: '',
        leading: IconWidget(
          icon: Icons.security,
          color: Colors.red,
        ),
        onTap: () => {},
      );

  Widget buildAccountInfo(BuildContext context) => SimpleSettingsTile(
        title: 'Privacy',
        subtitle: '',
        leading: IconWidget(
          icon: Icons.text_snippet,
          color: Colors.purple,
        ),
        onTap: () => {},
      );
}
