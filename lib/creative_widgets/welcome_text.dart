import 'package:flutter/material.dart';


class WelcomeText extends StatelessWidget {
  final Color? welcomeColor;
  final Color? creativityColor;
  const WelcomeText({
    Key? key,
    required this.welcomeColor,
    required this.creativityColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          text: 'Welcome \nTo ',
          style: TextStyle(
              color: welcomeColor!, fontWeight: FontWeight.bold, fontSize: 30),
          children: <TextSpan>[
            TextSpan(
                text: 'Creativity.',
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: creativityColor))
          ]),
    );
  }
}