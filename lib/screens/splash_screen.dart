import 'package:avocado/screens/welcom_screen.dart';
import 'package:flutter/material.dart';
import 'package:rive_splash_screen/rive_splash_screen.dart';

class AvocadoSplashScreen extends StatelessWidget {
  const AvocadoSplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashScreen.navigate(
        name: 'assets/new_file.riv',
        next: (_) => const WelcomeScreen(),
        until: () => Future.delayed(const Duration(seconds: 2)),
        startAnimation: 'Timeline 1',
      ),
    );
  }
}
