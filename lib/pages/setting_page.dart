import 'package:flutter/material.dart';
import 'package:flutter_firebase/controllers/setting_controller.dart';
import 'package:flutter_firebase/setup_locator.dart';
import 'package:settings_ui/settings_ui.dart';

class SettingPage extends StatelessWidget {
  final settingController = setup.getIt<SettingController>();

  SettingPage({Key? key}) : super(key: key);

  void _logOut(BuildContext context) {
    settingController.logOut();

  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SettingsList(
        sections: [
          SettingsSection(
            tiles: <SettingsTile>[
              SettingsTile.navigation(
                onPressed: (context) {
                  _logOut(context);
                },
                leading: const Icon(Icons.settings),
                title: const Text('Log out'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
