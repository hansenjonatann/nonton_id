import 'package:flutter/material.dart';
import 'package:nonton_id/models/home/movie_model.dart';

class MovieDetailPage extends StatelessWidget {
  static const routeName = '/movie-detail';
  const MovieDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final arguments = (ModalRoute.of(context)?.settings.arguments ??
        <String, dynamic>{}) as Map;

    MovieModel movieModel = arguments['movieModel'];

    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Container(
            height: 160.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(movieModel.image),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(
                  8.0,
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
