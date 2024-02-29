
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;


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
    apiKey: 'AIzaSyApw0xTrOMfZtqdzbNQyJkEpUpV4vCpCgQ',
    appId: '1:143505094227:web:1319259203872f1a0c78a6',
    messagingSenderId: '143505094227',
    projectId: 'wirelessproject-56b52',
    authDomain: 'wirelessproject-56b52.firebaseapp.com',
    storageBucket: 'wirelessproject-56b52.appspot.com',
    measurementId: 'G-KL4VQVFZ1J',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD_ZLP7psQGSHeG2psUmyxnzd6JP94D8zo',
    appId: '1:143505094227:android:630f263e48e767b40c78a6',
    messagingSenderId: '143505094227',
    projectId: 'wirelessproject-56b52',
    storageBucket: 'wirelessproject-56b52.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBqgs6YIOYgusa0Zbwx7gAXRU45VBLuVeM',
    appId: '1:143505094227:ios:3af42bfaa357ebc40c78a6',
    messagingSenderId: '143505094227',
    projectId: 'wirelessproject-56b52',
    storageBucket: 'wirelessproject-56b52.appspot.com',
    iosBundleId: 'com.example.flutterApplication1',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBqgs6YIOYgusa0Zbwx7gAXRU45VBLuVeM',
    appId: '1:143505094227:ios:3bdbab7335448aa60c78a6',
    messagingSenderId: '143505094227',
    projectId: 'wirelessproject-56b52',
    storageBucket: 'wirelessproject-56b52.appspot.com',
    iosBundleId: 'com.example.flutterApplication1.RunnerTests',
  );
}
