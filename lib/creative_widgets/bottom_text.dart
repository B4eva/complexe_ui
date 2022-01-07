import 'package:flutter/material.dart';

class BottomText extends StatelessWidget {
  final String? text1;
  final String? text2;
  final VoidCallback? press;

  const BottomText({
    Key? key,
    required this.text1,
    required this.text2,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: press,
        child: RichText(
          text: TextSpan(
              text: text1,
              style: const TextStyle(color: Colors.black),
              children: <TextSpan>[
                TextSpan(
                    text: text2,
                    style: const TextStyle(color: Color(0xFF008827)))
              ]),
        ),
      ),
    );
  }
}
