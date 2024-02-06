import 'package:flutter/material.dart';
import 'package:nonton_id/pages/home.dart';
import 'package:nonton_id/pages/login.dart';
import 'package:nonton_id/pages/movie_detail.dart';
import 'package:nonton_id/pages/signup.dart';
import 'package:nonton_id/pages/splash_screen.dart';

class EdspertNavigation {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  // Register route
  static Map<String, WidgetBuilder> routes = {
    SplashScreen.routeName: (context) => const SplashScreen(),
    LoginPage.routeName: (context) => const LoginPage(),
    SignUpPage.routeName: (context) => const SignUpPage(),
    HomePage.routeName: (context) => const HomePage(),
    MovieDetailPage.routeName: (context) => const MovieDetailPage(),
  };

  void pushNamed(String routeName, {Object? arguments}) {
    navigatorKey.currentState!.pushNamed(routeName);
  }

  void pushReplacementNamed(String routeName, {Object? arguments}) {
    navigatorKey.currentState!.pushReplacementNamed(routeName);
  }

  void push(Widget widget) {
    navigatorKey.currentState!
        .push(MaterialPageRoute(builder: (context) => widget));
  }

  void pop() {
    navigatorKey.currentState!.pop();
  }

  void popUntil(String routeName) {
    navigatorKey.currentState!.popUntil(ModalRoute.withName(routeName));
  }
}