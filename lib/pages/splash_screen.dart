import 'package:flutter/material.dart';
import 'package:nonton_id/constant/color.dart';
import 'package:nonton_id/core/navigation/edspert_navigation.dart';
import 'package:nonton_id/pages/login.dart';
import 'package:nonton_id/utils/image_dir.dart';
import 'package:nonton_id/utils/widget/nonton_id_text.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  static const routeName = '/splash-screen';
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 4), () {
      EdspertNavigation().pushReplacementNamed(LoginPage.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: appDisable,
        appBar: AppBar(
          backgroundColor: appDisable,
          elevation: 0,
        ),
        body: Stack(
          children: [
            const SizedBox(
              height: double.infinity,
              width: double.infinity,
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Image.asset(ImageDir.splashImage),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(top: 193),
              child: NontonIDText(),
            ),
          ],
        ));
  }
}
