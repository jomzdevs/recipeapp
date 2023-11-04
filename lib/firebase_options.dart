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
    apiKey: 'AIzaSyDXVDcggudoPqO8TUnXcDfdodNAgxOaJWY',
    appId: '1:418685471722:web:1636f3438765c69eec0093',
    messagingSenderId: '418685471722',
    projectId: 'fir-auth-39413',
    authDomain: 'fir-auth-39413.firebaseapp.com',
    storageBucket: 'fir-auth-39413.appspot.com',
    measurementId: 'G-80CLL7XY5H',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDb1J2m0sM4ZfhftfYuby4zwmYhp3mpeAc',
    appId: '1:418685471722:android:da794fc616b43ab2ec0093',
    messagingSenderId: '418685471722',
    projectId: 'fir-auth-39413',
    storageBucket: 'fir-auth-39413.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCMFoT_UEPtgTpmPztDSzJ5DLiTOy03WZo',
    appId: '1:418685471722:ios:8bda7afdfbb3dc96ec0093',
    messagingSenderId: '418685471722',
    projectId: 'fir-auth-39413',
    storageBucket: 'fir-auth-39413.appspot.com',
    iosBundleId: 'com.example.recipeapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCMFoT_UEPtgTpmPztDSzJ5DLiTOy03WZo',
    appId: '1:418685471722:ios:7126a490b087d0baec0093',
    messagingSenderId: '418685471722',
    projectId: 'fir-auth-39413',
    storageBucket: 'fir-auth-39413.appspot.com',
    iosBundleId: 'com.example.recipeapp.RunnerTests',
  );
}
