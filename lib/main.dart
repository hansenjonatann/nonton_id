import 'package:flutter/material.dart';
import 'package:nonton_id/core/navigation/edspert_navigation.dart';
import 'package:nonton_id/pages/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.routeName,
      routes: EdspertNavigation.routes,
      navigatorKey: EdspertNavigation.navigatorKey,
    );
  }
}