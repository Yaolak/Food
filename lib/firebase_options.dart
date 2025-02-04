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
    apiKey: 'AIzaSyA5jjcG_9Ek5Os_ojwQ9oUbljNhJf5NvaM',
    appId: '1:822525675245:web:d822a8994cda22620beee4',
    messagingSenderId: '822525675245',
    projectId: 'test-9a390',
    authDomain: 'test-9a390.firebaseapp.com',
    storageBucket: 'test-9a390.firebasestorage.app',
    measurementId: 'G-0LBF20RXYW',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDhmUni7OGlnkSo5Q8xR6nOBvqyCEDt3y8',
    appId: '1:822525675245:android:f82c7602d6d47bae0beee4',
    messagingSenderId: '822525675245',
    projectId: 'test-9a390',
    storageBucket: 'test-9a390.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAJXD5b8UInuVUilbJE1mQGxm4CdqHNitA',
    appId: '1:822525675245:ios:184e40ed5cd70e9e0beee4',
    messagingSenderId: '822525675245',
    projectId: 'test-9a390',
    storageBucket: 'test-9a390.firebasestorage.app',
    iosBundleId: 'com.example.flutterApplication1',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAJXD5b8UInuVUilbJE1mQGxm4CdqHNitA',
    appId: '1:822525675245:ios:184e40ed5cd70e9e0beee4',
    messagingSenderId: '822525675245',
    projectId: 'test-9a390',
    storageBucket: 'test-9a390.firebasestorage.app',
    iosBundleId: 'com.example.flutterApplication1',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyA5jjcG_9Ek5Os_ojwQ9oUbljNhJf5NvaM',
    appId: '1:822525675245:web:6887bd553ab27b0a0beee4',
    messagingSenderId: '822525675245',
    projectId: 'test-9a390',
    authDomain: 'test-9a390.firebaseapp.com',
    storageBucket: 'test-9a390.firebasestorage.app',
    measurementId: 'G-YJFWSPJ8H6',
  );
}
