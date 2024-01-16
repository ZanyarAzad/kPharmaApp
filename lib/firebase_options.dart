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
    apiKey: 'AIzaSyAkhTlelbVgKwKmvzBrLbRrgPYqUzZnJNU',
    appId: '1:624263347951:web:1aefdffd5ae6ac4e73651a',
    messagingSenderId: '624263347951',
    projectId: 'kpharma-dbbee',
    authDomain: 'kpharma-dbbee.firebaseapp.com',
    storageBucket: 'kpharma-dbbee.appspot.com',
    measurementId: 'G-M0BD5PF7FQ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCq8vU0r60qj5tEgiSSpQB8l4a7eYSnB_g',
    appId: '1:624263347951:android:f24885069fd49bc173651a',
    messagingSenderId: '624263347951',
    projectId: 'kpharma-dbbee',
    storageBucket: 'kpharma-dbbee.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDOcTJDCsbBA9tGX9NZVoJD87Z2nLYkqJk',
    appId: '1:624263347951:ios:4e121241ee243f4073651a',
    messagingSenderId: '624263347951',
    projectId: 'kpharma-dbbee',
    storageBucket: 'kpharma-dbbee.appspot.com',
    iosBundleId: 'com.example.kPharma',
  );
}
