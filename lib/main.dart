import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:saptaloka_web_revamp/Admin/admin_screens.dart';
import 'package:saptaloka_web_revamp/router.dart';
import 'package:saptaloka_web_revamp/screens/about_us/about_us_screens.dart';
import 'package:saptaloka_web_revamp/screens/contact_us/contact_us_screen.dart';
import 'package:saptaloka_web_revamp/screens/home_screen.dart';
import 'package:saptaloka_web_revamp/screens/maintenance_screen.dart';
import 'package:saptaloka_web_revamp/screens/news/news_screens.dart';
import 'package:saptaloka_web_revamp/screens/solutions/solutions_screen.dart';
import 'package:saptaloka_web_revamp/screens/solutions/widgets/it_solution.dart';
import 'package:url_strategy/url_strategy.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: "AIzaSyCWVTEr_HpkoVXvzbihhhOkhSzeH0Z_I3M",
        authDomain: "saptaloka-web.firebaseapp.com",
        projectId: "saptaloka-web",
        storageBucket: "saptaloka-web.appspot.com",
        messagingSenderId: "477492485536",
        appId: "1:477492485536:web:68d1410720f1c931c0d8c5"),
  );
  setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Saptaloka Digital',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routerConfig: router,
    );
  }
}
