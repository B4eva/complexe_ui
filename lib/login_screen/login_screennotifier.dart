import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginViewNotifier extends ChangeNotifier {
  GlobalKey<FormFieldState>? formKey;
  String? _userName;
  String? get userName => _userName;

  void setName(name) {
    _userName = name;
    notifyListeners();
  }

  String? _passWord;
  String? get passWord => _passWord;

  void setPassWord(pass) {
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

  navigateToSignIn(context) {
    Navigator.pushNamed(context, '/signIn');
    // print(
    //     'Username: ${_userNameEditingController!.value} \n passWord:${_passWordEditingController!.value}');
    notifyListeners();
  }

  navigateToDashboard(context) {
    if (formKey!.currentState!.validate()) {
      print('Validated');
    } else {
      print('not validated');
    }
    Navigator.pushNamed(context, '/dashboard');
  }

  Future<void> login({required String name, required String password}) async {
    navigateToDashboard;
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
