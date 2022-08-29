import 'package:shared_preferences/shared_preferences.dart';

class PrefStorage {
  saveString({required String name, required String val}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
   await prefs.setString(name, val);
  }

  Future<String> getString({required String name}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? result = prefs.getString(name);
    return result!;
  }
}

final prefStorage = PrefStorage();
