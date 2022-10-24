import 'package:flutter/material.dart';
import 'package:taste2plate/screens/login_screen.dart';
import 'package:taste2plate/screens/signup_scree.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'taste2plate',
      debugShowCheckedModeBanner: false,
      home: const LoginScreen(),
      routes: {
        LoginScreen.route:(context) => const LoginScreen(),
        SignupScreen.route:(context) => const SignupScreen(),
      },
    );
  }
}

