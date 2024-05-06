import 'package:flutter/material.dart';
import 'package:netflix_clone/features/about/screens/about_screen.dart';
import 'package:netflix_clone/features/movies/services/movies_service.dart';
import 'package:netflix_clone/features/search/functions/search_util.dart';
import 'package:netflix_clone/features/users/screens/user_home_screen.dart';
import 'package:netflix_clone/functions/navigation.dart';

import '../models/movie.dart';

class MoviesGridScreen extends StatefulWidget {
  const MoviesGridScreen({super.key});

  @override
  State<MoviesGridScreen> createState() => _MoviesGridScreenState();
}

class _MoviesGridScreenState extends State<MoviesGridScreen> {
  List<Movie>? movies;

  @override
  void initState() {
    MoviesService.getPopularMovies().then(
      (value) => setState(() {
        movies = value;
      }),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: const Color.fromARGB(255, 8, 8, 8),
        body: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            const Search(),
            Container(
              alignment: Alignment.centerLeft,
              child: const Categories('Movies & Tv'),
            ),
            movies == null
                ? const Center(child: CircularProgressIndicator())
                : Expanded(
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        childAspectRatio: 9 / 16,
                      ),
                      itemBuilder: (_, index) {
                        return MovieCard(movies![index]);
                      },
                      itemCount: movies!.length,
                    ),
                  )
          ],
        ),
        bottomNavigationBar: Container(
          height: 60,
          color: const Color.fromARGB(255, 0, 0, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Icon(
                Icons.home,
                color: Colors.grey,
              ),
              const Icon(
                Icons.smart_display_rounded,
                color: Colors.grey,
              ),
              const Icon(
                Icons.emoji_emotions_outlined,
                color: Colors.grey,
              ),
              InkWell(
                onTap: () {
                  debugPrint("zer");
                },
                child: const Icon(
                  Icons.search_sharp,
                  color: Colors.grey,
                ),
              ),
              const Icon(
                Icons.download_for_offline_outlined,
                color: Colors.grey,
              )
            ],
          ),
        ));
  }
}

class MovieCard extends StatelessWidget {
  const MovieCard(
    this.movie, {
    super.key,
    this.width = 185,
    this.height = 500,
  });

  final Movie movie;

  final int width;

  final int height;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        allerSurUnePageEtMaintenirLaPagePrecedente(
          context,
          AboutScreen(movie),
        );
      },
      child: Container(
        margin: const EdgeInsets.all(3),
        height: height.toDouble(),
        width: width.toDouble(),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Image.network(
          fullImagePath(movie.posterImageUrl),
          height: height.toDouble(),
          width: width.toDouble(),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

String fullImagePath(String path, [int width = 500]) {
  return "https://image.tmdb.org/t/p/w$width/$path";
}
