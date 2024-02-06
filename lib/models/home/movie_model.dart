class MovieModel {
  String title;
  String image;
  String rating;
  String description;
  String director;
  String writter;
  String genre;
  String ph;
  int duration;
  double score;
  int pg;

  MovieModel(
      {required this.title,
      required this.image,
      required this.rating,
      required this.description,
      required this.director,
      required this.writter,
      required this.genre,
      required this.pg,
      required this.score,
      required this.ph,
      required this.duration});
}
