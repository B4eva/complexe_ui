import 'package:complexe_ui/Widgets/dot.dart';
import 'package:flutter/material.dart';

class OptionItem extends StatelessWidget {
  final String? name;
  final VoidCallback? press;
  const OptionItem({
    Key? key,
    required this.name,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 44),
      child: GestureDetector(
        onTap: press,
        child: Row(
          children: <Widget>[
            const SizedBox(
              width: 26,
            ),
            const Dot(),
            const SizedBox(
              width: 26,
            ),
            Expanded(
              child: Text(
                ' $name',
                style: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
