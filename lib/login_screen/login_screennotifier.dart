import 'package:flutter/cupertino.dart';

class LoginViewNotifier extends ChangeNotifier {
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

  TextEditingController? _userNameEditingController;
  get userNameEditingController => _userNameEditingController;

  TextEditingController? _passWordEditingController;
  get passwordEditingController => _passWordEditingController;

  navigateTo(context) {
    print('Username:\n passWord:');
    notifyListeners();
  }
}
