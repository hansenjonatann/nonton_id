import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:nonton_id/constant/color.dart';
import 'package:nonton_id/core/navigation/edspert_navigation.dart';
import 'package:nonton_id/models/home/movie_model.dart';
import 'package:nonton_id/utils/svg_dir.dart';

class MovieDetailPage extends StatelessWidget {
  static const routeName = '/movie-detail';
  const MovieDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final arguments = (ModalRoute.of(context)?.settings.arguments ??
        <String, dynamic>{}) as Map;

    MovieModel movieModel = arguments['movieModel'] as MovieModel;

    return Scaffold(
      backgroundColor: appDisable,
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                height: 213.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(movieModel.image),
                    opacity: 0.7,
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      8.0,
                    ),
                  ),
                ),
                child: Center(
                    child: Icon(
                  Icons.play_circle,
                  size: 55,
                  color: appWhite.withOpacity(0.44),
                )),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Container(
                      width: 132,
                      height: 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            movieModel.image,
                          ),
                          fit: BoxFit.fill,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            10.0,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 152,
                            child: Text(
                              '${movieModel.title}',
                              style: GoogleFonts.openSans(
                                color: appWhite,
                                fontWeight: FontWeight.w700,
                                fontSize: 24,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 13.0,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    'Director',
                                    style: GoogleFonts.openSans(
                                        color: appWhite.withOpacity(0.25),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 32.0,
                              ),
                              Column(
                                children: [
                                  Text(
                                    movieModel.director,
                                    style: GoogleFonts.openSans(
                                        color: appWhite.withOpacity(0.6),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              )
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    'Writter',
                                    style: GoogleFonts.openSans(
                                        color: appWhite.withOpacity(0.25),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 38.0,
                              ),
                              Column(
                                children: [
                                  Text(
                                    movieModel.writter,
                                    style: GoogleFonts.openSans(
                                        color: appWhite.withOpacity(0.6),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              )
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    'Genre',
                                    style: GoogleFonts.openSans(
                                        color: appWhite.withOpacity(0.25),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 44.0,
                              ),
                              Column(
                                children: [
                                  Text(
                                    movieModel.genre,
                                    style: GoogleFonts.openSans(
                                        color: appWhite.withOpacity(0.6),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              )
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    'PH',
                                    style: GoogleFonts.openSans(
                                        color: appWhite.withOpacity(0.25),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 62.0,
                              ),
                              Column(
                                children: [
                                  Text(
                                    movieModel.ph,
                                    style: GoogleFonts.openSans(
                                        color: appWhite.withOpacity(0.6),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 22.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  children: [
                    Container(
                      width: 98,
                      height: 75,
                      decoration: BoxDecoration(
                          border: Border.all(color: appWhite.withOpacity(0.15)),
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 11.0,
                            ),
                            RatingBar.builder(
                              onRatingUpdate: (value) => value,
                              initialRating: double.parse(movieModel.rating),
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemSize: 10,
                              itemPadding:
                                  const EdgeInsets.symmetric(horizontal: 4.0),
                              itemBuilder: (context, _) => const Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 10,
                              ),
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              '${movieModel.score}/10',
                              style: GoogleFonts.openSans(
                                  color: appWhite,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 17.0,
                    ),
                    Container(
                      width: 98,
                      height: 75,
                      decoration: BoxDecoration(
                          border: Border.all(color: appWhite.withOpacity(0.15)),
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 11.0,
                            ),
                            Text(
                              'Duration',
                              style: GoogleFonts.openSans(
                                  color: appWhite,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400),
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              '${movieModel.duration} Min',
                              style: GoogleFonts.openSans(
                                  color: appWhite,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 17.0,
                    ),
                    Container(
                      width: 98,
                      height: 75,
                      decoration: BoxDecoration(
                          border: Border.all(color: appWhite.withOpacity(0.15)),
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 11.0,
                            ),
                            Text(
                              'P - G',
                              style: GoogleFonts.openSans(
                                  color: appWhite,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400),
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              '${movieModel.pg}+',
                              style: GoogleFonts.openSans(
                                  color: appWhite,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 24.0,
              ),
              Center(
                child: Text(
                  'Sinopsis',
                  style: GoogleFonts.openSans(
                      color: appWhite,
                      fontWeight: FontWeight.w600,
                      fontSize: 18),
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Align(
                  child: Text(
                    '${movieModel.description}',
                    style: GoogleFonts.openSans(
                        color: appWhite.withOpacity(0.6),
                        fontSize: 12,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
              const SizedBox(
                height: 118.0,
              ),
              InkWell(
                onTap: () {
                  EdspertNavigation().pushNamed('/buy-ticket',
                      arguments: {'movieModel': movieModel});
                },
                child: Container(
                  width: double.infinity,
                  height: 47,
                  margin: EdgeInsets.only(left: 25, bottom: 21, right: 25),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(
                          colors: [Color(0xff867AD2), Color(0xff6C61AF)])),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(SvgDir.ticketOutline),
                      const SizedBox(
                        width: 4.0,
                      ),
                      Text(
                        'Buy Ticket',
                        style: GoogleFonts.openSans(
                            color: appWhite,
                            fontWeight: FontWeight.w600,
                            fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
