// TODO Implement this library.
// File: lib/firebase_options.dart

import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, TargetPlatform, kIsWeb;

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
      default:
        throw UnsupportedError('Unsupported platform');
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: "YOUR_WEB_API_KEY",
    authDomain: "your-app.firebaseapp.com",
    projectId: "your-app-id",
    storageBucket: "your-app.appspot.com",
    messagingSenderId: "SENDER_ID",
    appId: "WEB_APP_ID",
    measurementId: "G-MEASURE_ID",
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: "YOUR_ANDROID_API_KEY",
    appId: "ANDROID_APP_ID",
    messagingSenderId: "SENDER_ID",
    projectId: "your-app-id",
    storageBucket: "your-app.appspot.com",
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: "YOUR_IOS_API_KEY",
    appId: "IOS_APP_ID",
    messagingSenderId: "SENDER_ID",
    projectId: "your-app-id",
    storageBucket: "your-app.appspot.com",
    iosClientId: "IOS_CLIENT_ID",
    iosBundleId: "com.example.yourapp",
  );
}
