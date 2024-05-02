import 'package:flutter/material.dart';
import 'package:netflix_clone/features/home/screens/home_screen.dart';

void main() {
  runApp(NetflixCloneApp());
}

class NetflixCloneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Netflix Clone",
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
