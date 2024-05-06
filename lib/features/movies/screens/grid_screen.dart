import 'package:flutter/material.dart';
import 'package:netflix_clone/features/movies/services/movies_service.dart';
import 'package:netflix_clone/features/search/functions/search_util.dart';
import 'package:netflix_clone/features/users/screens/user_home_screen.dart';

class MoviesGridScreen extends StatefulWidget {
  const MoviesGridScreen({super.key});

  @override
  State<MoviesGridScreen> createState() => _MoviesGridScreenState();
}

class _MoviesGridScreenState extends State<MoviesGridScreen> {
  @override
  void initState() {
    MoviesService.getPopularMovies();
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
            const Expanded(
                child: SingleChildScrollView(
              child: Column(
                children: [
                  Scroll(),
                  Scroll(),
                  Scroll(),
                  Scroll(),
                  Scroll(),
                  Scroll(),
                ],
              ),
            ))
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

class Scroll extends StatelessWidget {
  const Scroll({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (int i = 1; i < 6; i++)
            Container(
              margin: const EdgeInsets.all(3),
              height: 160,
              width: 120,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20.0)),
              child: Image.asset('assets/Icons/$i.png'),
            )
        ],
      ),
    );
  }
}
