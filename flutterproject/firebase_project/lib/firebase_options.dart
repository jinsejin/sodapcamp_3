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
    apiKey: 'AIzaSyBCNHRtAqfaUsItruby0g7I6Oizvh4cad0',
    appId: '1:127342166234:web:7500bb811e55f2bc4565e3',
    messagingSenderId: '127342166234',
    projectId: 'sodaproject-20527',
    authDomain: 'sodaproject-20527.firebaseapp.com',
    databaseURL: 'https://sodaproject-20527-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'sodaproject-20527.appspot.com',
    measurementId: 'G-VQPJ0GY16K',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD_v7G9QMsyEduYBl_MkJsKNcn1SYuw0PE',
    appId: '1:127342166234:android:0da6b54873ea3a614565e3',
    messagingSenderId: '127342166234',
    projectId: 'sodaproject-20527',
    databaseURL: 'https://sodaproject-20527-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'sodaproject-20527.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCq0ygvXM7rsEhIw69c-gmqQk0t3DUHiT4',
    appId: '1:127342166234:ios:5fed39c71c70ec6a4565e3',
    messagingSenderId: '127342166234',
    projectId: 'sodaproject-20527',
    databaseURL: 'https://sodaproject-20527-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'sodaproject-20527.appspot.com',
    iosClientId: '127342166234-t5hjo86ast819kep37ek34j1cgkturbs.apps.googleusercontent.com',
    iosBundleId: 'com.example.firebaseProject',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCq0ygvXM7rsEhIw69c-gmqQk0t3DUHiT4',
    appId: '1:127342166234:ios:5fed39c71c70ec6a4565e3',
    messagingSenderId: '127342166234',
    projectId: 'sodaproject-20527',
    databaseURL: 'https://sodaproject-20527-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'sodaproject-20527.appspot.com',
    iosClientId: '127342166234-t5hjo86ast819kep37ek34j1cgkturbs.apps.googleusercontent.com',
    iosBundleId: 'com.example.firebaseProject',
  );
}
