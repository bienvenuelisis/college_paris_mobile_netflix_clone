import 'package:flutter/material.dart';
import 'package:netflix_clone/features/home/screens/home_screen.dart';
import 'package:netflix_clone/features/search/screens/search_screen.dart';

class UserHomeScreen extends StatelessWidget {
  const UserHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      body: Stack(
        children: [
          Positioned.fill(child: Image.asset('assets/Icons/Imagefond.png')),
          Positioned(
            top: 40,
            left: 20,
            child: SizedBox(
              width: 350,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 5),
                    child: Image.asset('assets/Icons/netsmall.png', width: 15),
                  ),
                  SizedBox(
                    width: 70,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          child: Image.asset(
                            'assets/Icons/pleine_ecran.png',
                            width: 30,
                          ),
                        ),
                        SizedBox(
                            child: Image.asset(
                          'assets/Icons/profile.png',
                          width: 30,
                        ))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
              top: 140,
              left: 35,
              child: SizedBox(
                width: 320,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Categories('Tv Shows'),
                    const Categories('Movies'),
                    Row(
                      children: [
                        const Categories('Categories'),
                        SizedBox(
                          child: Image.asset(
                            'assets/Icons/bas.png',
                            width: 15,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )),
          Positioned(
              top: 480,
              child: Container(
                alignment: Alignment.center,
                width: 385,
                height: 300,
                child: ListView(
                  children: [
                    Container(
                        alignment: Alignment.center,
                        child: const Categories(
                            'Exciting - Peality TV - Competition')),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Column(
                          children: [
                            SizedBox(
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              child: Text(
                                'My List',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                        ElevatedButton(
                          onPressed: () {
                            null;
                          },
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          )),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                child: Image.asset(
                                  'assets/Icons/playBlack.png',
                                  width: 15,
                                ),
                              ),
                              const SizedBox(
                                child: Text('  Play',
                                    style: TextStyle(color: Colors.black)),
                              )
                            ],
                          ),
                        ),
                        const Column(
                          children: [
                            SizedBox(
                              child: Icon(
                                Icons.info_outline,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              child: Text(
                                'info',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    const Text(
                      'Continue Watching for Ellie',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 18),
                      height: 178,
                      width: 110,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: const [
                          VideoScreen('1.png'),
                          VideoScreen('2.png'),
                          VideoScreen('3.png'),
                          VideoScreen('4.png'),
                          VideoScreen('6.png')
                        ],
                      ),
                    ),
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
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomeScreen()));
              },
              child: const Icon(
                Icons.home,
                color: Colors.grey,
              ),
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
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SearchScreen()));
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
      ),
    );
  }
}

class VideoScreen extends StatelessWidget {
  final String files;
  const VideoScreen(this.files, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15, left: 5),
      height: 178,
      width: 110,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(2.0)),
      child: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/Icons/$files',
              width: 110,
            ),
          ),
          Container(
              margin: const EdgeInsets.only(top: 20),
              height: 120,
              alignment: Alignment.center,
              child: Container(
                alignment: Alignment.center,
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(204, 0, 0, 0),
                    borderRadius: BorderRadius.circular(50.0),
                    border: Border.all(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        style: BorderStyle.solid)),
                child: Image.asset('assets/Icons/play.png', width: 20),
              )),
        ],
      ),
    );
  }
}

class Categories extends StatelessWidget {
  final String myText;
  const Categories(this.myText, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Text(
        myText,
        style: const TextStyle(
            color: Colors.white, fontWeight: FontWeight.w300, fontSize: 17),
      ),
    );
  }
}
