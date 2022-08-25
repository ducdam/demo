import 'package:get_it/get_it.dart';

import 'cubits/login_cubit.dart';

class SetupLocator {
  final getIt = GetIt.instance;

  setupLocator() {
    GetIt.I.registerSingleton<LoginCubit>(LoginCubit());
  }
}

final setup = SetupLocator();
