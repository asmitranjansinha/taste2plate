import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:taste2plate/screens/home.dart';
import 'package:taste2plate/screens/login_screen.dart';
import 'package:taste2plate/screens/signup_scree.dart';
import 'package:taste2plate/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'taste2plate',
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      routes: {
        LoginScreen.route: (context) => const LoginScreen(),
        SignupScreen.route: (context) => const SignupScreen(),
        HomePage.route: (context) => const HomePage(),
        SplashScreen.route: (context) => const SplashScreen(),
      },
    );
  }
}
