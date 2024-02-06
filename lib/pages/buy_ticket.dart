import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nonton_id/constant/color.dart';
import 'package:nonton_id/core/navigation/edspert_navigation.dart';
import 'package:nonton_id/models/home/movie_model.dart';

class BuyTicketPage extends StatelessWidget {
  static const routeName = '/buy-ticket';
  const BuyTicketPage({super.key});

  @override
  Widget build(BuildContext context) {
    final arguments = (ModalRoute.of(context)?.settings.arguments ??
        <String, dynamic>{}) as Map;

    MovieModel movieModel = arguments['movieModel'] as MovieModel;
    return Scaffold(
      backgroundColor: appDisable,
      appBar: AppBar(
        backgroundColor: appPurple,
        centerTitle: true,
        title: Text(
          '${movieModel.title}',
          style: GoogleFonts.openSans(
              color: appWhite, fontSize: 18, fontWeight: FontWeight.w600),
        ),
        leading: IconButton(
          onPressed: () {
            EdspertNavigation().pop();
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
      ),
    );
  }
}
