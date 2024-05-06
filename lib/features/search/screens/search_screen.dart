import 'package:flutter/material.dart';
import 'package:netflix_clone/features/search/functions/search_util.dart';
import 'package:netflix_clone/features/users/screens/user_home_screen.dart';

import '../../movies/screens/grid_screen.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

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
              margin: const EdgeInsets.only(top: 7, right: 270),
              child: const Categories('Movies & Tv'),
            ),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                children: [for (int i = 1; i < 14; i++) SearchVideos(i)],
              ),
            ),
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

class Videos extends StatelessWidget {
  const Videos({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
    );
  }
}

class SearchVideos extends StatelessWidget {
  final int files;

  const SearchVideos(this.files, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 12, bottom: 5),
      height: 80,
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const MoviesGridScreen(),
            ),
          );
        },
        child: Row(
          children: [
            SizedBox(
              child: Image.asset('assets/Icons/search$files.png'),
            ),
            const SizedBox(
              width: 5,
            ),
            const SizedBox(
              child: Text(
                'Pinky blindears',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              child: Container(
                  margin: const EdgeInsets.only(left: 70),
                  height: 120,
                  alignment: Alignment.center,
                  child: Container(
                    alignment: Alignment.center,
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(204, 0, 0, 0),
                        borderRadius: BorderRadius.circular(50.0),
                        border: Border.all(
                            width: 3,
                            color: const Color.fromARGB(255, 255, 255, 255),
                            style: BorderStyle.solid)),
                    child: Image.asset('assets/Icons/play.png', width: 12),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
