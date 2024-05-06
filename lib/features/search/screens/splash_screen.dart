import 'package:flutter/material.dart';
import 'package:netflix_clone/features/home/screens/home_screen.dart';
import 'package:netflix_clone/features/movies/screens/grid_screen.dart';
import 'package:netflix_clone/functions/navigation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Duration duration = const Duration(milliseconds: 2400);
    Future.delayed(duration, method);

    super.initState();
  }

  void method() async {
// Obtain shared preferences.
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    int counter = prefs.getInt('counter') ?? 0;

    counter++;

    await prefs.setInt('counter', counter);

    debugPrint(counter.toString());

    navigateHome(counter == 1);
  }

  void navigateHome(bool firstNav) {
    if (firstNav) {
      allerSurUnePageEtEnleverLaPagePrecedente(context, const HomeScreen());
    } else {
      allerSurUnePageEtEnleverLaPagePrecedente(
        context,
        const MoviesGridScreen(),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  child: Image.asset(
                    'assets/Icons/netflix_logo.png',
                    width: 300,
                  ),
                ),
                const SizedBox(
                  child: CircularProgressIndicator(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
