import 'package:complexe_ui/Sigin_screen/sigin_screen.dart';
import 'package:complexe_ui/login_screen/login_screen.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SignInSCreen(),
      // initialRoute: '/signin',
      // routes: {
      //   '/login': (context) => const LoginScreen(),
      //   '/signin': (context) => const SignInSCreen()
      // },
    );
  }
}
