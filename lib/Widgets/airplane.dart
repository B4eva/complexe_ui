import 'package:flutter/material.dart';

class AirPlane extends StatelessWidget {
  const AirPlane({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Positioned(
        left: 40,
        top: 32,
        child: RotatedBox(
          quarterTurns: 2,
          child: Icon(
            Icons.airplanemode_active,
            size: 64,
            color: Colors.white,
          ),
        ));
  }
}
