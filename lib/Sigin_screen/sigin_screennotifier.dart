import 'package:flutter/cupertino.dart';

// provider state with changeNotifier
//provider only providers the valriabl;es as you can see
// state is managed by changeNotifier

class SignInScreenNotifier extends ChangeNotifier {
  GlobalKey<FormFieldState>? formKey;

  String? _userName;
  String? get userName => _userName;

  set userName(name) {
    _userName = name;
    notifyListeners();
  }

  String? _email;
  String? get email => _email;
  set email(mail) {
    _email = mail;
    notifyListeners();
  }

  String? _passWord;
  String? get passWord => _passWord;
  set passWord(pass) {
    _passWord = pass;

    notifyListeners();
  }

  final String _emailHint = 'Email';
  String get emailHint => _emailHint;

  final String _passwordHint = 'Password';
  String get passwordHint => _passwordHint;

  final String _userNameHint = 'User name';
  String get userNameHint => _userNameHint;

  final String _loginText = 'Log In';
  String get loginText => _loginText;

  final String _signInText = 'Sign In';
  String get signInText => _signInText;

  final String _haveAccountText = "Already have an Account? ";
  String get haveAccountText => _haveAccountText;

  TextEditingController? _emailEditingController;
  get emailEditingController => _emailEditingController;

  TextEditingController? _userNameEditingController;
  get userNameEditingController => _userNameEditingController;

  TextEditingController? _passWordEditingController;
  get passwordEditingController => _passWordEditingController;

  navigateTo(context) {
    Navigator.pushReplacementNamed(context, '/login');
    notifyListeners();
  }
}
