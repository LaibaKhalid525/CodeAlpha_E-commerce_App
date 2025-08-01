import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:task_1/Screen/login_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-Commerce App',
      home: LoginScreen(),
    );
  }
}
