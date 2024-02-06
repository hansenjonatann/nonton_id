import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nonton_id/constant/color.dart';
import 'package:nonton_id/models/home/movie_model.dart';
import 'package:nonton_id/utils/image_dir.dart';
import 'package:nonton_id/utils/svg_dir.dart';
import 'package:nonton_id/utils/widget/card_movie.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  static const routeName = '/home-page';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<MovieModel> listMovie = [
    MovieModel(
        title: "Star Wars : The Last",
        image: ImageDir.starwars,
        rating: "4",
        description:
            "Dalam film Lucasfilm Star Wars: The Last Jedi, kisah keluarga Skywalker diteruskan ketika para pahlawan The Force Awakens bergabung dengan para legenda galaksi dalam sebuah petualangan mencengangkan untuk menguak kunci misteri lintas zaman mengenai the Force serta terkuaknya secara mengejutkan berbagai rahasia masa lalu. Film ini dibintangi Mark Hamill, Carrie Fisher, Adam Driver, Daisy Ridley, John Boyega, Oscar Isaac, Lupita Nyong’o, Andy Serkis, Domhnall Gleeson, Anthony Daniels, Gwendoline Christie, Kelly Marie Tran, Laura Dern dan Benicio Del Toro. Star Wars: The Last Jedi ditulis & disutradarai oleh Rian Johnson dan diproduseri Kathleen Kennedy serta Ram Bergman. J.J. Abrams, Tom Karnowski dan Jason McGatlin sebagai produser eksekutif."),
    MovieModel(
        title: "Fast & Furious 9",
        image: ImageDir.fastandfurious,
        rating: "5",
        description: "Fast & Furious"),
    MovieModel(
        title: "The Conjuring 3",
        image: ImageDir.thecondjuring,
        rating: "2",
        description: "Lanjutan dari sequel Condjuring 2"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appDisable,
      appBar: AppBar(
        backgroundColor: appDisable,
        elevation: 0,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(SvgDir.location),
            SizedBox(width: 5),
            Text(
              'Yogyakarta',
              style: GoogleFonts.openSans(
                  color: appWhite, fontSize: 15, fontWeight: FontWeight.w600),
            )
          ],
        ),
        leading: Image.asset(ImageDir.avatarImage),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(SvgDir.notification),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 46,
                ),
                CarouselSlider(
                  options: CarouselOptions(
                    enlargeCenterPage: true,
                    scrollDirection: Axis.horizontal,
                    autoPlay: true,
                  ),
                  items: [
                    Container(
                      height: 163,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                            colors: [Color(0xff867AD2), Color(0xff494080)]),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 57),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Sedang Tayang',
                      style: GoogleFonts.openSans(
                        color: appWhite,
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Lihat Semua',
                          style: GoogleFonts.openSans(
                              color: appWhite,
                              fontWeight: FontWeight.w400,
                              fontSize: 10),
                        ),
                        const SizedBox(
                          width: 4.0,
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: appWhite,
                          size: 8,
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 29.0,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: List.generate(listMovie.length,
                        (index) => CardMovie(movieModel: listMovie[index])),
                  ),
                ),
                const SizedBox(
                  height: 19.0,
                ),
                Divider(
                  color: appWhite,
                  height: 0.5,
                ),
                const SizedBox(
                  height: 12.0,
                ),
                Text(
                  'Voucher Deals',
                  style: GoogleFonts.openSans(
                      color: appWhite,
                      fontWeight: FontWeight.w700,
                      fontSize: 18),
                ),
                const SizedBox(
                  height: 11.0,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        width: 213,
                        height: 131,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Color(0xff867AD2), Color(0xff494080)]),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      const SizedBox(
                        width: 13,
                      ),
                      Container(
                        width: 213,
                        height: 131,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Color(0xff867AD2), Color(0xff494080)]),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
