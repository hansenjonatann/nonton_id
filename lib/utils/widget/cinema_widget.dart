import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nonton_id/constant/color.dart';
import 'package:nonton_id/core/navigation/edspert_navigation.dart';

class CinemaWidget extends StatefulWidget {
  CinemaWidget({required this.cinemaModel});

  final cinemaModel;

  @override
  State<CinemaWidget> createState() => _CinemaWidgetState();
}

class _CinemaWidgetState extends State<CinemaWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Container(
            height: 34,
            width: 34,
            decoration: BoxDecoration(
              color: appWhite,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Center(
              child: Image.asset('${widget.cinemaModel.cinemaImage}',
                  alignment: Alignment.center),
            ),
          ),
          title: Text(
            '${widget.cinemaModel.cinemaName}',
            style: GoogleFonts.openSans(
                color: appWhite, fontWeight: FontWeight.w600, fontSize: 18),
          ),
          trailing: IconButton(
            onPressed: () {
              setState(() {
                widget.cinemaModel.isActive = !widget.cinemaModel.isActive;
              });
            },
            icon: (widget.cinemaModel.isActive)
                ? Icon(
                    Icons.arrow_drop_up,
                    color: Color(0xff6C61AF),
                    size: 11,
                  )
                : Icon(
                    Icons.arrow_drop_down,
                    color: appWhite,
                    size: 11,
                  ),
          ),
        ),
        (widget.cinemaModel.isActive)
            ? Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                width: double.infinity,
                height: 124,
                decoration: BoxDecoration(
                    border: Border.all(
                      width: 0.8,
                      color: appWhite.withOpacity(0.24),
                    ),
                    borderRadius: BorderRadius.circular(8)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 14, vertical: 11),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '${widget.cinemaModel.cinemaType}',
                            style: GoogleFonts.openSans(
                                color: appWhite.withOpacity(0.6),
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            'Rp. ${widget.cinemaModel.cinemaPrice.toString()}',
                            style: GoogleFonts.openSans(
                                color: appWhite.withOpacity(0.6),
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 11.0,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 29,
                            width: 75,
                            decoration: BoxDecoration(
                                color: Color(0xff282633),
                                borderRadius: BorderRadius.circular(5)),
                            child: Center(
                              child: Text(
                                '${widget.cinemaModel.cinemaTimeSchedule}',
                                style: GoogleFonts.openSans(
                                    color: appWhite.withOpacity(0.5),
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 6.0,
                          ),
                          InkWell(
                            onTap: () {
                              EdspertNavigation().pushNamed(
                                  '/booking-ticket-page',
                                  arguments: {
                                    'cinemaModel': widget.cinemaModel,
                                  });
                            },
                            child: Container(
                              height: 29,
                              width: 75,
                              decoration: BoxDecoration(
                                  color: Color(0xff6c61af),
                                  borderRadius: BorderRadius.circular(5)),
                              child: Center(
                                child: Text(
                                  '${widget.cinemaModel.cinemaTimeSchedule}',
                                  style: GoogleFonts.openSans(
                                      color: appWhite,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 6.0,
                          ),
                          Container(
                            height: 29,
                            width: 75,
                            decoration: BoxDecoration(
                                color: Color(0xff514F64),
                                borderRadius: BorderRadius.circular(5)),
                            child: Center(
                              child: Text(
                                '${widget.cinemaModel.cinemaTimeSchedule}',
                                style: GoogleFonts.openSans(
                                    color: appWhite,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 6.0,
                          ),
                          Container(
                            height: 29,
                            width: 75,
                            decoration: BoxDecoration(
                                color: Color(0xff514F64),
                                borderRadius: BorderRadius.circular(5)),
                            child: Center(
                              child: Text(
                                '${widget.cinemaModel.cinemaTimeSchedule}',
                                style: GoogleFonts.openSans(
                                    color: appWhite,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            : Container(),
      ],
    );
  }
}
