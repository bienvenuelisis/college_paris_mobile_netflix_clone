import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MovieDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 300,
              width: MediaQuery.sizeOf(context).width,
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Container(
                      color: Colors.grey,
                      height: 300,
                      width: 500,
                    ),
                  ),
                  Positioned(
                    child: Image.asset(
                      'resources/images/im.png',
                      color: Colors.white,
                    ),
                    right: 80,
                    top: 8,
                  ),
                  Positioned(
                    child: Image.asset(
                      'resources/images/close.png',
                      color: Colors.white,
                    ),
                    right: 10,
                  ),
                  Positioned(
                    child: Image.asset(
                      'resources/images/play.png',
                      color: Colors.white,
                    ),
                    top: 140,
                    left: MediaQuery.sizeOf(context).width / 2,
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Image.asset('resources/images/netf.png'),
                Column(
                  children: [
                    Text(
                      ' SERIES ',
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      '  Selling Sunset ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  ' 2022 ',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Image.asset('resources/images/tv.png'),
                Text(
                  ' 5 Seasons ',
                  style: TextStyle(color: Colors.white),
                ),
                Image.asset('resources/images/vis.png'),
                Text(
                  ' ',
                ),
                Image.asset('resources/images/hd.png'),
                Text(
                  ' ',
                ),
                Image.asset('resources/images/ad.png'),
              ],
            ),
            SizedBox(
              height: 40,
              width: MediaQuery.sizeOf(context).width * 0.75,
              child: ColoredBox(
                color: Colors.white,
                child: ElevatedButton(
                  onPressed: null,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.white,
                    elevation: 10,
                  ),
                  child: Text(
                    ' Play',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40,
              width: MediaQuery.sizeOf(context).width * 0.75,
              child: ColoredBox(
                color: Color.fromARGB(255, 64, 63, 63),
                child: ElevatedButton(
                  onPressed: null,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.white,
                    elevation: 10,
                  ),
                  child: Text(
                    ' Download ',
                    style: TextStyle(
                      color: Color.fromARGB(225, 175, 171, 171),
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      ' S5:E10 Nothing Remains the Same ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      ' Hearts flip as Heather weds Tarek. Jason and Mary grapple with being ghosted. Go solo or take the next step: The agents face life-changing decisions. ',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
            Center(
              child: Row(
                children: [
                  Column(
                    children: [
                      Image.asset(
                        'resources/images/add.png',
                        color: Colors.white,
                      ),
                      Text(
                        ' My List ',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                        'resources/images/Like.png',
                        color: Colors.white,
                      ),
                      Text(
                        ' Rate ',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                        'resources/images/Share.png',
                        color: Colors.white,
                      ),
                      Text(
                        ' Share ',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Center(
              child: Row(
                children: [
                  Text(
                    '  Episodes  ',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    '  Collection  ',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    '  More Like This  ',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    '  Trailers & More  ',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Text(
                  '  Season 5  ',
                  style: TextStyle(color: Colors.white),
                ),
                Image.asset(
                  'resources/images/close.png',
                  color: Colors.white,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
