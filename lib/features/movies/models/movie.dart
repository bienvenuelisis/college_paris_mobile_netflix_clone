// ignore_for_file: public_member_api_docs, sort_constructors_first
class Movie {
  final bool adult;
  final String backgroundImageUrl;
  final String posterImageUrl;
  final int id;
  final String originalLangage;
  final String originalTitle;
  final String overview;
  final DateTime releaseDate;
  final String title;

  Movie({
    this.adult = false,
    this.posterImageUrl = '',
    this.backgroundImageUrl = '',
    this.id = 0,
    this.originalLangage = '',
    this.originalTitle = '',
    this.overview = '',
    required this.releaseDate,
    this.title = '',
  });
}

Movie fromJsonToMovie(Map<String, dynamic> json) {
  final movie = Movie(
    adult: json["adult"],
    backgroundImageUrl: json["backdrop_path"],
    posterImageUrl: json["poster_path"],
    id: json["id"],
    originalLangage: json["original_language"],
    originalTitle: json["original_title"],
    overview: json["overview"],
    releaseDate: DateTime.now(),
    title: json["title"],
  );

  return movie;
}
