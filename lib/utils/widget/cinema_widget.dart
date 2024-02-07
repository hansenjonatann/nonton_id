import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nonton_id/constant/color.dart';

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
                print(widget.cinemaModel.isActive);
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

        


      ],
    );
  }
}
