import 'package:flutter/material.dart';
import 'package:nonton_id/constant/color.dart';
import 'package:nonton_id/models/home/cinema_model.dart';
import 'package:nonton_id/models/home/movie_model.dart';

class BookingTicketPage extends StatelessWidget {
  static const routeName = '/booking-ticket-page';
  const BookingTicketPage({super.key});

  @override
  Widget build(BuildContext context) {
    final arguments = (ModalRoute.of(context)?.settings.arguments ??
        <String, dynamic>{}) as Map;

    CinemaModel cinemaModel = arguments['cinemaModel'] as CinemaModel;
    return Scaffold(
      backgroundColor: appDisable,
      appBar: AppBar(
        backgroundColor: appPurple,
        title: Text('${cinemaModel.cinemaName}'),
      ),
    );
  }
}
