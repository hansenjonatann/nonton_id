import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nonton_id/constant/color.dart';

class NontonIDText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'NONTON',
          style: GoogleFonts.exo(
              color: Colors.white, fontWeight: FontWeight.w900, fontSize: 40),
        ),
        Text(
          '·ID',
          style: GoogleFonts.exo(
              color: appYellow, fontWeight: FontWeight.w900, fontSize: 40),
        ),
      ],
    );
  }
}
