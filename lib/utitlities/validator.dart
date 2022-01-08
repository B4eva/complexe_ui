String? validateEmail(String? value) {
  String? _message;
  String e =
      r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$";
  RegExp regex = RegExp(e);
  if (value!.isEmpty) {
    _message = 'Please Enter Email';
  } else if (regex.hasMatch(value)) {
    _message = 'Please provide a valid Email';
  }
  return _message!;
}

String? validatePassWord(String? value) {
  String? _message;
  String p =
      r"^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$"; // Minimum eight characters, at least one letter and one number:

  RegExp regex = RegExp(p);
  if (value!.isEmpty) {
    _message = 'Please Enter password';
  } else if (regex.hasMatch((value))) {
    _message = 'Try again';
  }
  return _message;
}

String? validateUserName(String? value) {
  String? _message;
  String name =
      r"^(?=.{8,20}$)(?![_.])(?!.*[_.]{2})[a-zA-Z0-9._]+(?<![_.])$"; // 8-20 characters long Aa-Zz

  RegExp regex = RegExp(name);
  if (value!.isEmpty) {
    _message = 'Please Enter username';
  } else if (regex.hasMatch(value)) {
    _message = 'Try again';
  }
  return _message;
}
