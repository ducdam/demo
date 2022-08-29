import 'package:flutter_firebase/controllers/setting_controller.dart';
import 'package:get_it/get_it.dart';

import 'controllers/login_controller.dart';

class SetupLocator {
  final getIt = GetIt.instance;

  setupLocator() {
    GetIt.I.registerSingleton<LoginController>(LoginController());
    GetIt.I.registerSingleton<SettingController>(SettingController());
  }
}

final setup = SetupLocator();
