import 'package:flutter/material.dart';
import 'package:nonton_id/constant/color.dart';
import 'package:nonton_id/core/navigation/edspert_navigation.dart';
import 'package:nonton_id/pages/login.dart';
import 'package:nonton_id/utils/widget/form_field.dart';
import 'package:nonton_id/utils/widget/nonton_id_text.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  static const routeName = '/signup-page';

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
            'Daftar',
            style: GoogleFonts.openSans(
                fontSize: 20, color: appWhite, fontWeight: FontWeight.w700),
          ),
          SizedBox(height: 32),
          FormFieldWidget(hintText: 'alamat email', icon: Icons.email_outlined),
          SizedBox(height: 8),
          FormFieldWidget(hintText: 'username', icon: Icons.person_2_outlined),
          SizedBox(height: 8),
          FormFieldWidget(hintText: 'password', icon: Icons.lock_outline),
          SizedBox(height: 8),
          FormFieldWidget(
              hintText: 'ulangi password', icon: Icons.lock_outline),
          SizedBox(height: 32),
          Row(
            children: [
              SizedBox(width: 47),
              Text(
                'Sudah punya akun?',
                style: GoogleFonts.openSans(
                    color: appWhite.withOpacity(0.6),
                    fontWeight: FontWeight.w400,
                    fontSize: 12),
              ),
              TextButton(
                onPressed: () {
                  EdspertNavigation().pushReplacementNamed(LoginPage.routeName);
                },
                child: Text(
                  'Masuk',
                  style: GoogleFonts.openSans(
                      color: appWhite,
                      fontWeight: FontWeight.w700,
                      fontSize: 12),
                ),
              ),
            ],
          ),
          Expanded(child: SizedBox()),
          InkWell(
            onTap: () {
              EdspertNavigation().pushReplacementNamed(LoginPage.routeName);
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
                  'Daftar',
                  style: GoogleFonts.openSans(
                      color: appWhite,
                      fontWeight: FontWeight.w600,
                      fontSize: 18),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
