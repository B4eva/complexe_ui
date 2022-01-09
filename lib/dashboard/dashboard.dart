import 'package:complexe_ui/creative_widgets/welcome_text.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xFF008827),
          ),
          height: 350,
          width: 350,
          child: const Center(
            child: WelcomeText(
              welcomeColor: Colors.white,
              creativityColor: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
