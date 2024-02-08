class CinemaModel {
  String id;
  String cinemaName;
  String cinemaImage;
  bool isActive;
  String cinemaType;
  int cinemaPrice;
  String cinemaTimeSchedule;

  CinemaModel(
      {required this.id,
      required this.cinemaImage,
      required this.cinemaName,
      required this.isActive,
      required this.cinemaType,
      required this.cinemaPrice,
      required this.cinemaTimeSchedule});
}
