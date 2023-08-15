import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
//import 'firebase_options.dart';
import 'package:location_track/screens/login_screen.dart';
//import 'package:firebase_auth/firebase_auth.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Where is my Bus?',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: LoginScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
