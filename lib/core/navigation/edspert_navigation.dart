import 'package:flutter/material.dart';
import 'package:nonton_id/pages/booking_ticket.dart';
import 'package:nonton_id/pages/buy_ticket.dart';
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
    LoginPage.routeName: (context) => LoginPage(),
    SignUpPage.routeName: (context) => SignUpPage(),
    HomePage.routeName: (context) => const HomePage(),
    MovieDetailPage.routeName: (context) => const MovieDetailPage(),
    BuyTicketPage.routeName: (context) => const BuyTicketPage(),
    BookingTicketPage.routeName: (context) => const BookingTicketPage(),
  };

  void pushNamed(String routeName, {Object? arguments}) {
    navigatorKey.currentState!.pushNamed(routeName, arguments: arguments);
  }

  void pushReplacementNamed(String routeName, {Object? arguments}) {
    navigatorKey.currentState!
        .pushReplacementNamed(routeName, arguments: arguments);
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
