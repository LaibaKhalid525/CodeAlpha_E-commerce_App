import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:task_1/Screen/login_screen.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Required!
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-Commerce App',
      home: LoginScreen(), // or HomeScreen(), etc.
    );
  }
}
