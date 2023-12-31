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
        return macos;
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
    apiKey: 'AIzaSyBhfZp2JRRexWEkdF7BnNWHVPSg2cR8-Mo',
    appId: '1:792249642379:web:d3a6c2ab49ec0a5a47d38e',
    messagingSenderId: '792249642379',
    projectId: 'flutterintro-76564',
    authDomain: 'flutterintro-76564.firebaseapp.com',
    databaseURL: 'https://flutterintro-76564-default-rtdb.firebaseio.com',
    storageBucket: 'flutterintro-76564.appspot.com',
    measurementId: 'G-LFQY7TRDJ3',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAmJtwfUYaJUT1dy-Zop_sbmz3iNLjgM9A',
    appId: '1:792249642379:android:cb78f6a3b7ff0dfa47d38e',
    messagingSenderId: '792249642379',
    projectId: 'flutterintro-76564',
    databaseURL: 'https://flutterintro-76564-default-rtdb.firebaseio.com',
    storageBucket: 'flutterintro-76564.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDH3-sRwygOm1e_8Y5rAOBUkezGjl0np2A',
    appId: '1:792249642379:ios:06324c273329dfa447d38e',
    messagingSenderId: '792249642379',
    projectId: 'flutterintro-76564',
    databaseURL: 'https://flutterintro-76564-default-rtdb.firebaseio.com',
    storageBucket: 'flutterintro-76564.appspot.com',
    iosBundleId: 'com.example.flutterBulbIot',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDH3-sRwygOm1e_8Y5rAOBUkezGjl0np2A',
    appId: '1:792249642379:ios:1f9feee8b6a48b4b47d38e',
    messagingSenderId: '792249642379',
    projectId: 'flutterintro-76564',
    databaseURL: 'https://flutterintro-76564-default-rtdb.firebaseio.com',
    storageBucket: 'flutterintro-76564.appspot.com',
    iosBundleId: 'com.example.flutterBulbIot.RunnerTests',
  );
}
