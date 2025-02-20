// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyBEKQVC1E-HIhcs-GHJQzKz2I2xn9YJaQk',
    appId: '1:642466303589:web:6d0609549395f8766c008c',
    messagingSenderId: '642466303589',
    projectId: 'login-a69cc',
    authDomain: 'login-a69cc.firebaseapp.com',
    storageBucket: 'login-a69cc.appspot.com',
    measurementId: 'G-LN4490MQN8',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCuEQwRpQxpfSukXIXgsUWwNjFbN0l9bkA',
    appId: '1:642466303589:android:e6b4baee7b97d9a36c008c',
    messagingSenderId: '642466303589',
    projectId: 'login-a69cc',
    storageBucket: 'login-a69cc.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAb18A19hqEkIHt-_rIJdduJzOOr--rRtI',
    appId: '1:642466303589:ios:cfcb1cf0382da5506c008c',
    messagingSenderId: '642466303589',
    projectId: 'login-a69cc',
    storageBucket: 'login-a69cc.appspot.com',
    iosBundleId: 'com.example.projectb3',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAb18A19hqEkIHt-_rIJdduJzOOr--rRtI',
    appId: '1:642466303589:ios:cfcb1cf0382da5506c008c',
    messagingSenderId: '642466303589',
    projectId: 'login-a69cc',
    storageBucket: 'login-a69cc.appspot.com',
    iosBundleId: 'com.example.projectb3',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBEKQVC1E-HIhcs-GHJQzKz2I2xn9YJaQk',
    appId: '1:642466303589:web:ab8623c7c32d1df76c008c',
    messagingSenderId: '642466303589',
    projectId: 'login-a69cc',
    authDomain: 'login-a69cc.firebaseapp.com',
    storageBucket: 'login-a69cc.appspot.com',
    measurementId: 'G-H27KT66HC5',
  );
}
