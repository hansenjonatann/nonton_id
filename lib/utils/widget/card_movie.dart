import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nonton_id/constant/color.dart';
import 'package:nonton_id/core/navigation/edspert_navigation.dart';

class CardMovie extends StatelessWidget {
  CardMovie({required this.movieModel});

  final movieModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          EdspertNavigation().pushNamed('/movie-detail',
              arguments: {'movieModel': movieModel});
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(right: 14),
              width: 147,
              height: 210,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
              child: ClipRect(
                clipBehavior: Clip.antiAlias,
                child: Image.asset(
                  movieModel.image,
                  width: 147,
                  height: 210,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const SizedBox(
              height: 11.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${movieModel.title}',
                  style: GoogleFonts.openSans(
                      color: appWhite,
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 6.0,
                ),
                RatingBar.builder(
                  onRatingUpdate: (value) => value,
                  initialRating: double.parse(movieModel.rating),
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemSize: 10,
                  itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                  itemBuilder: (context, _) => const Icon(
                    Icons.star,
                    color: Colors.amber,
                    size: 10,
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
