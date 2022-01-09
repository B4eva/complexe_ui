import 'package:complexe_ui/Sigin_screen/sigin_screen.dart';
import 'package:complexe_ui/dashboard/dashboard.dart';
import 'package:complexe_ui/login_screen/login_screen.dart';
import 'package:complexe_ui/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';

class Routers {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/splashScreen':
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case '/':
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );

      case '/signIn':
        return MaterialPageRoute(
          builder: (_) => const SignInSCreen(),
        );

      case '/dashboard':
        return MaterialPageRoute(builder: (_) => const Dashboard());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}
