import 'package:flutter/material.dart';
import 'package:netflix_clone/features/home/screens/movie_details_screen.dart';

void main() {
  runApp(Netflixpage());
}

class Netflixpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Netflix page",
      home: MovieDetailsScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
