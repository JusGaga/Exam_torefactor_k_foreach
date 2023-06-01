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
    apiKey: 'AIzaSyCKtHFhoZWLYrRLcBEs6WZSgq7SzOXOcgQ',
    appId: '1:828414048370:web:1e259118486da4db34aaeb',
    messagingSenderId: '828414048370',
    projectId: 'foreach-torrefeacteur',
    authDomain: 'foreach-torrefeacteur.firebaseapp.com',
    storageBucket: 'foreach-torrefeacteur.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBl1rF6z7NG0o2v7UwU7zKQNY-e3i4O71w',
    appId: '1:828414048370:android:12663e44c8d89d8534aaeb',
    messagingSenderId: '828414048370',
    projectId: 'foreach-torrefeacteur',
    storageBucket: 'foreach-torrefeacteur.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBpWJn5W5G-Gaff9HlyyQXslITyWGO5c-U',
    appId: '1:828414048370:ios:a1620988e47193fa34aaeb',
    messagingSenderId: '828414048370',
    projectId: 'foreach-torrefeacteur',
    storageBucket: 'foreach-torrefeacteur.appspot.com',
    iosBundleId: 'com.example.foreachExamGaetanJuston',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBpWJn5W5G-Gaff9HlyyQXslITyWGO5c-U',
    appId: '1:828414048370:ios:a1620988e47193fa34aaeb',
    messagingSenderId: '828414048370',
    projectId: 'foreach-torrefeacteur',
    storageBucket: 'foreach-torrefeacteur.appspot.com',
    iosBundleId: 'com.example.foreachExamGaetanJuston',
  );
}