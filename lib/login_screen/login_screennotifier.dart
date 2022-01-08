import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginViewNotifier extends ChangeNotifier {
  GlobalKey<FormFieldState>? formKey;
  String? _userName;
  String? get userName => _userName;

  set userName(name) {
    _userName = name;
    notifyListeners();
  }

  // String? _email;
  // String? get email => _email;
  // set email(mail) {
  //   _email = mail;
  //   notifyListeners();
  // }

  String? _passWord;
  String? get passWord => _passWord;
  set passWord(pass) {
    _passWord = pass;

    notifyListeners();
  }

  TextEditingController? _userNameEditingController;
  get userNameEditingController => _userNameEditingController;

  TextEditingController? _passWordEditingController;
  get passwordEditingController => _passWordEditingController;

  final String _passwordHint = 'Password';
  String get passwordHint => _passwordHint;

  final String _userNameHint = 'User name';
  String get userNameHint => _userNameHint;

  final String _loginText = 'Log In';
  String get loginText => _loginText;

  final String _signInText = 'Sign In';
  String get signInText => _signInText;

  final String _dontHaveAccountText = "Don't have an Account? ";
  String get dontHaveAccountText => _dontHaveAccountText;

  navigateTo(context) {
    Navigator.pushNamed(context, '/signIn');
    // print(
    //     'Username: ${_userNameEditingController!.value} \n passWord:${_passWordEditingController!.value}');
    notifyListeners();
  }

  // doLogin(context) {
  //   print('on Login');
  //   final form = formKey!.currentState;

  //   if (form!.validate()) {
  //     form.save();
  //   } else {
  //     Scaffold.of(context).showBottomSheet(
  //       (context) => const Text(
  //         'Snack',
  //       ),
  //     );
  //   }

  //   notifyListeners();
  // }
}
