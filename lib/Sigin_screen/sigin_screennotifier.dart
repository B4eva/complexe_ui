import 'package:flutter/cupertino.dart';

// provider state with changeNotifier
//provider only providers the valriabl;es as you can see
// state is managed by changeNotifier

class SignInScreenNotifier extends ChangeNotifier {
  final String _emailHint = 'Password';
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

  navigateTo(BuildContext context) {
    Navigator.pushNamed(context, '/login');

    notifyListeners();
  }
}
