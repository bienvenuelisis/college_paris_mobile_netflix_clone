import 'package:flutter/material.dart';
import 'package:netflix_clone/features/users/screens/user_home_screen.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      SafeArea(
        child: Material(
          color: Colors.black,
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 10),
                height: 210,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 40, 39, 39),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      topRight: Radius.circular(10.0)),
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(
                          child: Image.asset(
                            'assets/Icons/pleine_ecran.png',
                            width: 35,
                          ),
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                        SizedBox(
                          child: Image.asset(
                            'assets/Icons/false.png',
                            width: 19,
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        )
                      ],
                    ),
                    Container(
                      height: 120,
                      alignment: Alignment.center,
                      child: Container(
                        alignment: Alignment.center,
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50.0),
                            border: Border.all(
                                color: const Color.fromARGB(255, 158, 28, 18),
                                style: BorderStyle.solid)),
                        child: Image.asset('assets/Icons/play.png', width: 20),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 15, left: 15),
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        "Trailer",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      height: 620,
                      width: 500,
                      margin: const EdgeInsets.only(left: 5, top: 10),
                      child: SizedBox(
                          height: 30,
                          width: 80,
                          child: Column(children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  child: Image.asset(
                                      'assets/Icons/netsmall.png',
                                      width: 10),
                                ),
                                const SizedBox(
                                  child: Text(
                                    '  S E R I E S',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white,
                                        fontSize: 10),
                                  ),
                                )
                              ],
                            ),
                            Container(
                              height: 30,
                              width: 500,
                              margin: const EdgeInsets.only(top: 3),
                              child: const Text(
                                'Selling Sunset',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(right: 120),
                              height: 20,
                              width: 260,
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    const SizedBox(
                                      child: Text(
                                        '2022  ',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 13),
                                      ),
                                    ),
                                    SizedBox(
                                      child: Image.asset(
                                        'assets/Icons/tvma.png',
                                        width: 30,
                                      ),
                                    ),
                                    const SizedBox(
                                      child: Text('  5 Seasons  ',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 13)),
                                    ),
                                    SizedBox(
                                      child: Image.asset(
                                        'assets/Icons/vison.png',
                                        width: 58,
                                      ),
                                    ),
                                    SizedBox(
                                      child: Image.asset(
                                        'assets/Icons/hd.png',
                                        width: 20,
                                      ),
                                    ),
                                    SizedBox(
                                        child: Image.asset(
                                      'assets/Icons/ad.png',
                                      width: 20,
                                    ))
                                  ]),
                            ),
                            Container(
                                margin: const EdgeInsets.only(right: 8, top: 5),
                                height: 35,
                                child: SizedBox(
                                    height: 30,
                                    child: Container(
                                      height: 30,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(
                                            5.0), // Set border radius here
                                      ),
                                      child: ElevatedButton(
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const UserHomeScreen()));
                                        },
                                        style: ElevatedButton.styleFrom(
                                            shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        )),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            SizedBox(
                                              child: Image.asset(
                                                'assets/Icons/playBlack.png',
                                                width: 15,
                                              ),
                                            ),
                                            const SizedBox(
                                              child: Text('  Play',
                                                  style: TextStyle(
                                                      color: Colors.black)),
                                            )
                                          ],
                                        ),
                                      ),
                                    ))),
                            Container(
                                margin: const EdgeInsets.only(right: 8, top: 5),
                                height: 35,
                                child: SizedBox(
                                    height: 30,
                                    child: Container(
                                      height: 30,
                                      decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                            255, 49, 49, 49),
                                        borderRadius: BorderRadius.circular(
                                            5.0), // Set border radius here
                                      ),
                                      child: ElevatedButton(
                                        onPressed: null,
                                        style: ElevatedButton.styleFrom(
                                            shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        )),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            SizedBox(
                                              child: Image.asset(
                                                'assets/Icons/down.png',
                                                width: 15,
                                              ),
                                            ),
                                            const SizedBox(
                                              child: Text(
                                                '  Downland',
                                                style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 255, 255, 255)),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ))),
                            Container(
                              margin: const EdgeInsets.only(top: 15),
                              child: const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    child: Text(
                                        'S5:E10 Nothing Remains The Same',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            fontSize: 13)),
                                  ),
                                  SizedBox(
                                    child: Text(
                                        'Hearts flip as Heather weds Tarek. Jason and Mary grapple with being ghosted. Go solo or take the next step: The agents face life-changing decisions.',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w200,
                                            color: Colors.white,
                                            fontSize: 12)),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 5),
                              height: 90,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width: 100,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                          child: Image.asset(
                                            'assets/Icons/plus2.png',
                                            width: 30,
                                          ),
                                        ),
                                        const SizedBox(
                                          child: Text(
                                            'My List',
                                            style:
                                                TextStyle(color: Colors.grey),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 100,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                          child: Image.asset(
                                            'assets/Icons/jaime.png',
                                            width: 30,
                                          ),
                                        ),
                                        const SizedBox(
                                          child: Text(
                                            'Rate',
                                            style:
                                                TextStyle(color: Colors.grey),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 100,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                          child: Image.asset(
                                            'assets/Icons/send.png',
                                            width: 30,
                                          ),
                                        ),
                                        const SizedBox(
                                          child: Text(
                                            'Share',
                                            style:
                                                TextStyle(color: Colors.grey),
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Option(
                                  Color.fromARGB(255, 184, 15, 15),
                                  'Épisodes',
                                  size: 80,
                                ),
                                Option(
                                  Colors.black,
                                  'Collection',
                                  size: 90,
                                ),
                                Option(
                                  Colors.black,
                                  'More like this',
                                  size: 110,
                                ),
                                Option(
                                  Colors.black,
                                  'Trailers',
                                  size: 70,
                                ),
                              ],
                            ),
                            Container(
                              height: 200,
                              margin: const EdgeInsets.only(top: 2),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(left: 10),
                                    child: Row(
                                      children: [
                                        const Text(
                                          'Season 5',
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                        SizedBox(
                                            child: Image.asset(
                                          'assets/Icons/downdrop.png',
                                          width: 15,
                                        ))
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(left: 10),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 90,
                                          width: 150,
                                          alignment: Alignment.center,
                                          color: const Color.fromARGB(
                                              255, 56, 56, 56),
                                          child: Container(
                                            alignment: Alignment.center,
                                            height: 40,
                                            width: 40,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(300),
                                                border: Border.all(
                                                    color: Colors.white)),
                                            child: Image.asset(
                                                'assets/Icons/play.png',
                                                width: 15),
                                          ),
                                        ),
                                        Container(
                                          margin:
                                              const EdgeInsets.only(left: 5),
                                          child: const Text(
                                              '1.Game Changer\n37m',
                                              style: TextStyle(
                                                  color: Colors.grey)),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.all(5),
                                    child: const Text(
                                        'Flying high: Chrishell reveals her latest love - Jason. In LA, the agents get real about the relationship while Christine readies her return.',
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 255, 255, 255))),
                                  )
                                ],
                              ),
                            )
                          ]))),
                ],
              )
            ],
          ),
        ),
      )
    ]);
  }
}

class Option extends StatelessWidget {
  final Color couleur;
  final String monText;
  final double size;
  const Option(this.couleur, this.monText, {super.key, this.size = 100});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      height: 50,
      width: size,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          border: Border(
        top: BorderSide(color: couleur, width: 3),
      )),
      child: Text(
        monText,
        style: const TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 12),
      ),
    );
  }
}
