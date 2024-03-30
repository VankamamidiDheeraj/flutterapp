import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:wishlist/pages/auth_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
        apiKey: "AIzaSyDGhGasTHYyWgUDmZ-EC870rJa6xgWi-ow",
        appId: "1:476117577176:android:595c37c02153e0484896ad",
        messagingSenderId: "476117577176",
        projectId: "dheeraj-77939"),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AuthPage(),
    );
  }
}
