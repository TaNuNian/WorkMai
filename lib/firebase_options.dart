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
    apiKey: 'AIzaSyDbz6M-U38ig3KpWB8DS-KqGuNxA6Zgkck',
    appId: '1:621857328316:web:e8886f1c3a80ff770e94b9',
    messagingSenderId: '621857328316',
    projectId: 'workmai-d4756',
    authDomain: 'workmai-d4756.firebaseapp.com',
    storageBucket: 'workmai-d4756.appspot.com',
    measurementId: 'G-KMXE0SQQNH',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAiSuJx8RiirQUEwnPGgKkN_i77NnFBBrk',
    appId: '1:621857328316:android:82deec20e126a41f0e94b9',
    messagingSenderId: '621857328316',
    projectId: 'workmai-d4756',
    storageBucket: 'workmai-d4756.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDKkdl7Pt5mXcZi0yY9meOac3yuHB0iebI',
    appId: '1:621857328316:ios:5bd7c8c33a21db1f0e94b9',
    messagingSenderId: '621857328316',
    projectId: 'workmai-d4756',
    storageBucket: 'workmai-d4756.appspot.com',
    iosBundleId: 'com.caesar.workmai.workmai',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDKkdl7Pt5mXcZi0yY9meOac3yuHB0iebI',
    appId: '1:621857328316:ios:5bd7c8c33a21db1f0e94b9',
    messagingSenderId: '621857328316',
    projectId: 'workmai-d4756',
    storageBucket: 'workmai-d4756.appspot.com',
    iosBundleId: 'com.caesar.workmai.workmai',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDbz6M-U38ig3KpWB8DS-KqGuNxA6Zgkck',
    appId: '1:621857328316:web:c2ca283da8ba9f1b0e94b9',
    messagingSenderId: '621857328316',
    projectId: 'workmai-d4756',
    authDomain: 'workmai-d4756.firebaseapp.com',
    storageBucket: 'workmai-d4756.appspot.com',
    measurementId: 'G-N49V4B6J10',
  );
}
