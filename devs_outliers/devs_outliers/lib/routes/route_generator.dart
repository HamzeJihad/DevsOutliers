import 'package:devs_outliers/screens/home/home_screen.dart';
import 'package:devs_outliers/screens/login/login_screen.dart';
import 'package:devs_outliers/screens/singup/singup_screen.dart';
import 'package:flutter/material.dart';


class RouteGenerator {
  // ignore: missing_return
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // ignore: unused_local_variable
    final args = settings.arguments;

    switch (settings.name) {
      case '/login':
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case '/signup':
        return MaterialPageRoute(builder: (_) => SignUpScreen());

      case '/homeScreen':
        return MaterialPageRoute(builder: (_) => HomeScreen());

      
      case '/':
      default:
        return MaterialPageRoute(builder: (_) => LoginScreen(),
        );
    }
  }
}
