import 'dart:convert';

import 'package:http/http.dart';
import 'package:netflix_clone/features/movies/models/movie.dart';

class MoviesService {
  static Future<List<Movie>> getPopularMovies() async {
    Uri uri = Uri.parse("https://api.themoviedb.org/3/movie/popular");
    Response response = await get(
      uri,
      headers: {
        "Authorization":
            "Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIyYzg2MzkwZjhhYWNlZWEzNjMzZDYwMDI1M2NkYTUyMSIsInN1YiI6IjY2MzM4ZThiYTFjNTlkMDEyM2U2ZTVkZSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.1T5pMb9XAI34kATvdJiQBqPrL6gZwqEUkdleTnbjJdU",
      },
    );
    if (response.statusCode == 200) {
      var body = response.body;
      var json = jsonDecode(body);
      List<Movie> movies;
      movies = (json["results"] as List)
          .map<Movie>(
            (json) => fromJsonToMovie(json),
          )
          .toList();
      return movies;
    } else {
      return [];
    }
  }
}
