import 'package:flutter/material.dart';

class LoginTextField extends StatelessWidget {
  final TextEditingController? textEditingController;
  final String? hintText;
  final IconData? icon;
  const LoginTextField({
    Key? key,
    required this.hintText,
    required this.icon,
    this.textEditingController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 0.9,
      child: Column(
        children: [
          TextFormField(
              controller: textEditingController,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  enabled: true,
                  prefixIcon: Icon(
                    icon!,
                  ),
                  hintText: hintText!)),
          const Divider(
            thickness: 2,
            indent: 15,
            endIndent: 15,
          )
        ],
      ),
    );
  }
}
