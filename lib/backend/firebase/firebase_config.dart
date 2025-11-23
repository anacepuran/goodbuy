import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAOyVTiC-W07SD5FEn3bo2i50OP0a-RGq4",
            authDomain: "financni-pomocnik-xaa80s.firebaseapp.com",
            projectId: "financni-pomocnik-xaa80s",
            storageBucket: "financni-pomocnik-xaa80s.firebasestorage.app",
            messagingSenderId: "51742846008",
            appId: "1:51742846008:web:0e75a7ad554e2851af8acd"));
  } else {
    await Firebase.initializeApp();
  }
}
