// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAhYdrwij2sP-jeu2TPFFIt5cF2jYXzdPA',
    appId: '1:844709904696:web:e33735b0a9ec2b63ebc1cd',
    messagingSenderId: '844709904696',
    projectId: 'flutter-firebase-dqd891996',
    authDomain: 'flutter-firebase-dqd891996.firebaseapp.com',
    storageBucket: 'flutter-firebase-dqd891996.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBuOyN2LbMdIQ6lPlqVDd3PwydAms_d9tc',
    appId: '1:844709904696:android:2035f7245e9e871eebc1cd',
    messagingSenderId: '844709904696',
    projectId: 'flutter-firebase-dqd891996',
    storageBucket: 'flutter-firebase-dqd891996.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB9AEUh5kdhnh8fy4Ec8rg1pVpU5nspX6k',
    appId: '1:844709904696:ios:4261dd7f769339aaebc1cd',
    messagingSenderId: '844709904696',
    projectId: 'flutter-firebase-dqd891996',
    storageBucket: 'flutter-firebase-dqd891996.appspot.com',
    iosClientId: '844709904696-1qierf03qdaq1dcelcp26knbkaaa2ocj.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterFirebase',
  );
}
