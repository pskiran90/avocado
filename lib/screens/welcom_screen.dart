import 'package:avocado/screens/register_screen.dart';
import 'package:avocado/widgets/custome_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 64),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Personalised',
                    style: TextStyle(fontSize: 48, fontWeight: FontWeight.w900),
                  ),
                  Text(
                    'Health Plan',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w300),
                  )
                ],
              ),
              const Spacer(),
              Image.asset('assets/2.png'),
              const SizedBox(height: 64),
              Center(
                child: AvocadoButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const RegisterScreen(),
                      ),
                    );
                  },
                  text: 'Get Started',
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
