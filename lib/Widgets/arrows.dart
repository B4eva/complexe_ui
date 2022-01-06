import 'package:flutter/material.dart';

class ArrowIcons extends StatelessWidget {
  const ArrowIcons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 8,
      bottom: 10,
      child: Column(
        children: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.arrow_upward,
              color: Colors.white,
              size: 15,
            ),
            onPressed: () {},
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
              height: 30,
              width: 30,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: IconButton(
                icon: const Icon(
                  Icons.arrow_downward,
                  size: 15,
                ),
                onPressed: () {},
              )),
        ],
      ),
    );
  }
}
