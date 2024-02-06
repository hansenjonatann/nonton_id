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
        title: "Star Wars : The Last Jedi",
        image: ImageDir.starwars,
        rating: "4",
        description:
            "Pasukan perlawanan , yang dipimpin oleh Jenderal Leia Organa, melarikan diri dari D'Qar saat armada First Order tiba. \nSerangan balasan mahal yang dipimpin oleh Poe Dameron menghancurkan tuntutan orde pertama, namun setelah melarikan diri ke ruang henti, Orde Pertama melacaknya dan menyerang konvoi Perlawanan. Poe diturunkan karena kehilangan kapal dan tidak menaati Leia. Kylo Ren, anak Leia, ragu-ragu untuk menyalakan kapal Perlawanan setelah merasakan kehadiran ibunya, namun wingman tempur TIE-nya menghancurkan jembatan tersebut, melumpuhkan Leia. Tidak setuju dengan strategi pasif pemimpin baru Vice Admiral Holdo, Poe membantu Finn, BB-8, dan mekanik Rose Tico memulai misi rahasia untuk menonaktifkan perangkat pelacakan.",
        duration: 152,
        director: 'Rian Jhonson',
        writter: 'Rian Jhonson',
        genre: 'Action, Sci-fi',
        ph: 'Lucasfillm Ltd.',
        score: 6.9,
        pg: 13),
    MovieModel(
        title: "Fast & Furious 9",
        image: ImageDir.fastandfurious,
        rating: "5",
        description:
            "Fast & Furious 9 mengisahkan Dominic Toretto (Vin Diesel) yang hidup tenang bersama keluarganya. Namun ketenangan tersebut mulai terusik dengan kehadiran Jakob Toretto (John Cena) yang tak lain adalah saudara Dom dan Mia. Jakob merupakan seorang pembunuh profesional yang sangat mematikan. Sama seperti Dom, Jakob juga termasuk seorang pengemudi andal yang terampil dalam hal kebut-kebutan di jalanan. Jakob rupanya terlibat dalam sebuah rencana yang bisa menghancurkan dunia. Hal ini membuat Dom tak bisa tinggal diam dan berusaha untuk menghentikan saudaranya tersebut.",
        duration: 143,
        director: 'Justin Lin',
        writter: 'Daniel Casey',
        genre: 'Action',
        ph: 'Universal Pitcures',
        score: 5.2,
        pg: 13),
    MovieModel(
        title: "The Conjuring 3",
        image: ImageDir.thecondjuring,
        rating: "2",
        description:
            "Film ini menceritakan pengalaman spiritual pasangan paranormal Ed dan Lorraine Warren dalam menghadapi iblis kuat yang merasuki manusia dan melakukan pembunuhan. Kisah bermula ketika keduanya diminta untuk mendampingi ritual pengusiran setan yang meneror seorang anak bernama David Glatzel. Ritual berjalan dengan cukup kacau karena iblis yang sangat kuat. Sampai akhirnya, Arne Johnson yang merupakan kekasih dari kakak David, yaitu Debbie, memberikan tubuhnya kepada iblis demi membantu David. Ritual pun selesai dengan kondisi Ed yang terkena serangan jantung dan harus dilarikan ke rumah sakit. Akan tetapi, sang iblis ternyata benar-benar menerima penyerahan diri Arne. Dia mulai mengalami berbagai tragedi yang berujung menjadikannya sebagai seorang pembunuh.",
        duration: 112,
        director: 'Michael Chaves',
        writter: 'James Wan',
        genre: 'Horror',
        ph: 'Warnes Bros , Pitcures',
        score: 6.3,
        pg: 13),
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
                const SizedBox(
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
                        gradient: const LinearGradient(
                            colors: [Color(0xff867AD2), Color(0xff494080)]),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 57),
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
                        const Icon(
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
                const Divider(
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
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: appPurple,
        items: [
        BottomNavigationBarItem(
            icon: SvgPicture.asset(SvgDir.home), label: 'Beranda'),
        BottomNavigationBarItem(
            icon: SvgPicture.asset(SvgDir.home), label: 'Beranda'),
        BottomNavigationBarItem(
            icon: SvgPicture.asset(SvgDir.home), label: 'Beranda'),
        BottomNavigationBarItem(
            icon: SvgPicture.asset(SvgDir.home), label: 'Beranda'),
      ]),
    );
  }
}
