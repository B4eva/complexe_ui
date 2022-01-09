import 'package:flutter/material.dart';

extension ValidationExtension on BuildContext {
  String? validateMail(String? email) {
    if (email == null || email.isEmpty) return 'Field cannot be empty';

    bool isEmailValid = RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(email);

    return (isEmailValid) ? null : 'Please enter a valid email';
  }

  String? validatePassWord(String? passWord) {
    if (passWord == null || passWord.isEmpty) return 'Field cannot be empty';

    bool isPassValid = (passWord.length >= 4);
    return (isPassValid) ? null : 'please enter valid password';
  }

  String? validateUserName(String? name) {
    if (name == null || name.isEmpty) return 'Fied cannot be empty';

    bool isValidName = (name.length > 3);
    return isValidName ? null : 'Please enter a valid name';
  }
}






// String? validateEmail(String? value) {
//   String? _message;
//   String e =
//       r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$";
//   RegExp regex = RegExp(e);
//   if (value!.isEmpty) {
//     _message = 'Please Enter Email';
//   } else if (!regex.hasMatch(value)) {
//     _message = 'Please provide a valid Email';
//   }
//   return _message!;
// }

// String? validatePassWord(String? value) {
//   String? _message;
//   String p =
//       r"^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$"; // Minimum eight characters, at least one letter and one number:

//   RegExp regex = RegExp(p);
//   if (value!.isEmpty) {
//     _message = 'Please Enter password';
//   } else if (regex.hasMatch((value))) {
//     null;
//     // _message = 'Try again';
//   }

//   return _message;
// }

// String? validateUserName(String? value) {
//   String? _message;
//   String n =
//       r"^(?=.{8,20}$)(?![_.])(?!.*[_.]{2})[a-zA-Z0-9._]+(?<![_.])$"; // 8-20 characters long Aa-Zz

//   RegExp regex = RegExp(n);
//   if (value!.isEmpty) {
//     _message = 'Please Enter username';
//   } else if (regex.hasMatch(value)) {
//     _message = 'Try again';
//   }
//   return _message;
// }
