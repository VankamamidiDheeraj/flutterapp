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
    apiKey: 'AIzaSyB6ohesrRUBoWjYLAXQ76JICeWfj-3S0s0',
    appId: '1:476117577176:web:b56779e7c75f25b34896ad',
    messagingSenderId: '476117577176',
    projectId: 'dheeraj-77939',
    authDomain: 'dheeraj-77939.firebaseapp.com',
    storageBucket: 'dheeraj-77939.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDGhGasTHYyWgUDmZ-EC870rJa6xgWi-ow',
    appId: '1:476117577176:android:595c37c02153e0484896ad',
    messagingSenderId: '476117577176',
    projectId: 'dheeraj-77939',
    storageBucket: 'dheeraj-77939.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBULZ8sduKs1HJ3Cr4PDzv-dlkbV6hLKLQ',
    appId: '1:476117577176:ios:8a4c6ff6548a26814896ad',
    messagingSenderId: '476117577176',
    projectId: 'dheeraj-77939',
    storageBucket: 'dheeraj-77939.appspot.com',
    iosBundleId: 'com.example.wishlist',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBULZ8sduKs1HJ3Cr4PDzv-dlkbV6hLKLQ',
    appId: '1:476117577176:ios:bb47902096b7c9d34896ad',
    messagingSenderId: '476117577176',
    projectId: 'dheeraj-77939',
    storageBucket: 'dheeraj-77939.appspot.com',
    iosBundleId: 'com.example.wishlist.RunnerTests',
  );
}
