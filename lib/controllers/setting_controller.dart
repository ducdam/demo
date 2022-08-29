import 'package:firebase_auth/firebase_auth.dart';

class SettingController{

  logOut() async{
    await FirebaseAuth.instance.signOut();
  }
}