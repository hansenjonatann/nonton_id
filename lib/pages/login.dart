import 'package:flutter/material.dart';
import 'package:nonton_id/constant/color.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nonton_id/core/navigation/edspert_navigation.dart';
import 'package:nonton_id/pages/home.dart';
import 'package:nonton_id/pages/signup.dart';
import 'package:nonton_id/utils/widget/form_field.dart';
import 'package:nonton_id/utils/widget/nonton_id_text.dart';

class LoginPage extends StatelessWidget {
  static const routeName = '/login-page';

  LoginPage({super.key});

  final TextEditingController _usernameC = TextEditingController();
  final TextEditingController _passwordC = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appDisable,
      body: Column(
        children: [
          SizedBox(height: 148),
          NontonIDText(),
          SizedBox(height: 104),
          Text(
            'Masuk',
            style: GoogleFonts.openSans(
                color: appWhite, fontWeight: FontWeight.w700, fontSize: 20),
          ),
          SizedBox(height: 32),
          FormFieldWidget(
            hintText: 'username',
            icon: Icons.person_2_outlined,
            controller: _usernameC,
          ),
          SizedBox(height: 8),
          FormFieldWidget(
            hintText: 'password',
            icon: Icons.lock_open_outlined,
            controller: _passwordC,
          ),
          SizedBox(height: 32),
          Row(children: [
            SizedBox(width: 47),
            Text(
              'Belum Punya Akun?',
              style: GoogleFonts.openSans(
                  color: appWhite.withOpacity(0.6),
                  fontWeight: FontWeight.w400,
                  fontSize: 12),
            ),
            TextButton(
              onPressed: () {
                EdspertNavigation().pushReplacementNamed(SignUpPage.routeName);
              },
              child: Text(
                'Daftar',
                style: GoogleFonts.openSans(
                    color: appWhite, fontWeight: FontWeight.w700, fontSize: 12),
              ),
            ),
          ]),
          Expanded(child: SizedBox()),
          InkWell(
            onTap: () {
              EdspertNavigation().pushReplacementNamed(HomePage.routeName);
            },
            child: Container(
              width: double.infinity,
              height: 47,
              margin: EdgeInsets.only(left: 25, bottom: 21, right: 25),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                      colors: [Color(0xff867AD2), Color(0xff6C61AF)])),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'Masuk',
                  style: GoogleFonts.openSans(
                      color: appWhite,
                      fontWeight: FontWeight.w600,
                      fontSize: 18),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
