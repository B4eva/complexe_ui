import 'package:flutter/material.dart';

class LoginTextField extends StatelessWidget {
  final TextEditingController? textEditingController;
  final String? hintText;
  final IconData? icon;
  final FormFieldValidator<String>? validate;
  final Function(String?) save;
  final bool? hideText;
  // final GlobalKey<FormFieldState>? formKey;

  const LoginTextField({
    Key? key,
    required this.hintText,
    required this.icon,
    this.textEditingController,
    required this.validate,
    required this.save,
    required this.hideText,
    // this.formKey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 0.9,
      child: Column(
        children: [
          TextFormField(
              // autovalidate: true,
              onSaved: save,
              validator: validate,
              controller: textEditingController,
              obscureText: hideText!,
              decoration: InputDecoration(
                  hintStyle: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                  contentPadding:
                      const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
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
