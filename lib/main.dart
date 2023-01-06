import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:saptaloka_web_revamp/screens/about_us/about_us_screens.dart';
import 'package:saptaloka_web_revamp/screens/home_screen.dart';
import 'package:saptaloka_web_revamp/screens/maintenance_screen.dart';
import 'package:saptaloka_web_revamp/screens/solutions/solutions_screen.dart';
import 'package:saptaloka_web_revamp/widgets/footer.dart';

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
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Saptaloka Digital',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
      routes: {
        AboutUsScreens.routeName: (context) => const AboutUsScreens(),
        SolutionsScreen.routeName: (context) => const SolutionsScreen(),
      },
    );
  }
}
