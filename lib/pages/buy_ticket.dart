import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nonton_id/constant/color.dart';
import 'package:nonton_id/core/navigation/edspert_navigation.dart';
import 'package:nonton_id/models/home/cinema_model.dart';
import 'package:nonton_id/models/home/movie_model.dart';
import 'package:nonton_id/utils/image_dir.dart';
import 'package:nonton_id/utils/widget/cinema_widget.dart';
import 'package:weekly_date_picker/weekly_date_picker.dart';

class BuyTicketPage extends StatefulWidget {
  static const routeName = '/buy-ticket';
  const BuyTicketPage({super.key});

  @override
  State<BuyTicketPage> createState() => _BuyTicketPageState();
}

class _BuyTicketPageState extends State<BuyTicketPage> {
  List<CinemaModel> listCinema = [
    CinemaModel(
        id: "1",
        cinemaImage: ImageDir.cgv,
        cinemaName: 'CGV Jwalk',
        isActive: true,
        cinemaType: 'Regular',
        cinemaPrice: 50000,
        cinemaTimeSchedule: '16.00'),
    CinemaModel(
      id: "2",
      cinemaImage: ImageDir.cinema21,
      cinemaName: 'XXI Ambarukmo Plaza',
      isActive: false,
      cinemaType: 'Saiten Suite',
      cinemaPrice: 65000,
      cinemaTimeSchedule: '17.00',
    ),
    CinemaModel(
        id: "3",
        cinemaImage: ImageDir.cinema21,
        cinemaName: 'Cinema XXI',
        isActive: false,
        cinemaType: 'Premium',
        cinemaPrice: 85000,
        cinemaTimeSchedule: '18.00'),
  ];
  final DateTime _selectedDate = DateTime.timestamp();

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
        body: SafeArea(
          child: Column(
            children: [
              const SizedBox(
                height: 10.0,
              ),
              WeeklyDatePicker(
                
                selectedDay: _selectedDate,
                backgroundColor: appDisable,
                enableWeeknumberText: false,
                daysInWeek: 7,
                weekdayTextColor: (_selectedDate == true)
                    ? appWhite
                    : appWhite.withOpacity(0.6),
                digitsColor: (_selectedDate == true)
                    ? appWhite
                    : appWhite.withOpacity(0.6),
                changeDay: (_selectedDate) {
                  print(_selectedDate);
                },
              ),
              const SizedBox(
                height: 13.0,
              ),
              Divider(
                color: appWhite.withOpacity(0.25),
              ),
              const SizedBox(
                height: 21.0,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 17),
                height: 38,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: appPurple,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        color: appWhite.withOpacity(0.2),
                      ),
                      alignLabelWithHint: true,
                      contentPadding: EdgeInsets.symmetric(horizontal: 9),
                      hintText: 'Cari Bioskop',
                      hintStyle: GoogleFonts.openSans(
                          color: appWhite.withOpacity(0.2),
                          fontWeight: FontWeight.w400,
                          fontSize: 14)),
                ),
              ),
              const SizedBox(
                height: 31.0,
              ),
              Column(
                children: List.generate(listCinema.length,
                    (index) => CinemaWidget(cinemaModel: listCinema[index])),
              ),
            ],
          ),
        ));
  }
}
