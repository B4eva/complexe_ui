import 'package:flutter/material.dart';

class SmallCircle extends StatelessWidget {
  final Color? color;
  const SmallCircle({
    Key? key,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(shape: BoxShape.circle, color: color!));
  }
}

class CircularEdgeContainer extends StatelessWidget {
  const CircularEdgeContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Container(
        height: 120,
        width: 120,
        decoration: const BoxDecoration(
            // shape: BoxShape.circle,
            color: Colors.green,
            borderRadius: BorderRadius.only(
              // topRight: Radius.circular(0),
              // topLeft: Radius.circular(60),
              bottomLeft: Radius.circular(180),
            )),
      ),
    );
  }
}
