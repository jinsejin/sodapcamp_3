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
    apiKey: 'AIzaSyB1fvYADY-rA4j2HuHpxOIiXycFVw7uLxc',
    appId: '1:78340777097:web:f5658189c856cc94425258',
    messagingSenderId: '78340777097',
    projectId: 'dev0208',
    authDomain: 'dev0208.firebaseapp.com',
    storageBucket: 'dev0208.appspot.com',
    measurementId: 'G-TM47PNJ0XC',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDtej5jJC4aEWRkoz5xmehE4ORUxcJgWcQ',
    appId: '1:78340777097:android:60ad06c7173b23f7425258',
    messagingSenderId: '78340777097',
    projectId: 'dev0208',
    storageBucket: 'dev0208.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDmSf_woAtM8uSTBoEfHnqLFkYdGK7NEnI',
    appId: '1:78340777097:ios:a334e6e03c0af5bb425258',
    messagingSenderId: '78340777097',
    projectId: 'dev0208',
    storageBucket: 'dev0208.appspot.com',
    androidClientId:
        '78340777097-ua733sn118sm6s8v8ddnvf2q42e64lm1.apps.googleusercontent.com',
    iosClientId:
        '78340777097-brnstaqqttko6n21ogshvlslab3phf3i.apps.googleusercontent.com',
    iosBundleId: 'com.example.dariyproject',
  );
}
