import 'dart:async';

import 'package:complexe_ui/creative_widgets/creative_circles.dart';
import 'package:complexe_ui/login_screen/login_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(milliseconds: 90), onClose);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(
              height: 120,
            ),
            const Align(
                alignment: Alignment(0.6, -0.1),
                child: SmallCircle(
                    color: Color(0xFF008827), height: 50, width: 50)),
            const SizedBox(
              height: 20,
            ),
            const Align(
                alignment: Alignment(0.4, -0.3),
                child: SmallCircle(
                    color: Color(0xFF008827), height: 70, width: 70)),
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: const Alignment(-0.1, 0.4),
              child: Container(
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Color(0xFF008827)),
                height: 180,
                width: 180,
                child: const Center(
                    child: Text(
                  'Creativity',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                )),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Align(
                alignment: Alignment(-0.6, -0.1),
                child: SmallCircle(
                    color: Color(0xFF008827), height: 40, width: 40)),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }

  void onClose() {
    Navigator.of(context).pushReplacement(PageRouteBuilder(
        maintainState: true,
        opaque: true,
        pageBuilder: (context, _, __) => const LoginScreen(),
        transitionDuration: const Duration(seconds: 2),
        transitionsBuilder: (context, anim1, anim2, child) {
          return FadeTransition(
            opacity: anim1,
            child: child,
          );
        }));
  }
}
