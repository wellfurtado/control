import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAvQVEpyTsFJCUqb6D2IbBDkUNj55M--AM",
            authDomain: "controlebatore.firebaseapp.com",
            projectId: "controlebatore",
            storageBucket: "controlebatore.appspot.com",
            messagingSenderId: "232150319207",
            appId: "1:232150319207:web:05726a714ca9f2d492d4c2"));
  } else {
    await Firebase.initializeApp();
  }
}
