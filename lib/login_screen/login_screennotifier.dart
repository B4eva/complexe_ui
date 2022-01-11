import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginViewNotifier extends ChangeNotifier {
  GlobalKey<FormState>? formKey;
  String? _userName = '';
  String? get userName => _userName;

  set setName(String? name) {
    _userName = name;
    notifyListeners();
  }

  String? _passWord = '';
  String? get passWord => _passWord;

  set setPassword(String? pass) {
    _passWord = pass;

    notifyListeners();
  }

  // TextEditingController? _userNameEditingController;
  // get userNameEditingController => _userNameEditingController;

  // TextEditingController? _passWordEditingController;
  // get passwordEditingController => _passWordEditingController;

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
    Navigator.pushReplacementNamed(context, '/signIn');
    // print(
    //     'Username: ${_userNameEditingController!.value} \n passWord:${_passWordEditingController!.value}');
    notifyListeners();
  }

  navigateToDashboard(context) {
    print('Perfoming login');
    if (formKey!.currentState!.validate()) {
      Navigator.pushReplacementNamed(context, '/dashboard');
    } else {
      print('not validated');
    }
    notifyListeners();
  }

  Future<void> login({required String? name, required String? password}) async {
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
