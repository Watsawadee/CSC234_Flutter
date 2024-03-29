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
    apiKey: 'AIzaSyANRrSxF-3qj87jJ32O6nhablxs9OAjoGM',
    appId: '1:993241151145:web:d59045c0115b57d0c05bb8',
    messagingSenderId: '993241151145',
    projectId: 'flutter-codelab-firebase-3f2ad',
    authDomain: 'flutter-codelab-firebase-3f2ad.firebaseapp.com',
    storageBucket: 'flutter-codelab-firebase-3f2ad.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAT7yKJ3R-ve0iVw97aL6fcxAo6VaDxO4c',
    appId: '1:993241151145:android:17df7ce9f90d9d38c05bb8',
    messagingSenderId: '993241151145',
    projectId: 'flutter-codelab-firebase-3f2ad',
    storageBucket: 'flutter-codelab-firebase-3f2ad.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDBh9EuItlGw5xMq80WxCOm03gBOktuHxE',
    appId: '1:993241151145:ios:b946f67d7711b803c05bb8',
    messagingSenderId: '993241151145',
    projectId: 'flutter-codelab-firebase-3f2ad',
    storageBucket: 'flutter-codelab-firebase-3f2ad.appspot.com',
    iosBundleId: 'com.example.gtkFlutter',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDBh9EuItlGw5xMq80WxCOm03gBOktuHxE',
    appId: '1:993241151145:ios:88e14f62c1ea16b5c05bb8',
    messagingSenderId: '993241151145',
    projectId: 'flutter-codelab-firebase-3f2ad',
    storageBucket: 'flutter-codelab-firebase-3f2ad.appspot.com',
    iosBundleId: 'com.example.gtkFlutter.RunnerTests',
  );
}
