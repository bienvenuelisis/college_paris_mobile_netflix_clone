import 'package:flutter/material.dart';
import 'package:netflix_clone/features/movies/screens/grid_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController _pageController = PageController();

  int _currentPageIndex = 0;

  void _onPageChanged(int index) {
    setState(() {
      _currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        title: Row(
          children: [
            Image.asset('assets/Icons/netflix_logo.png', width: 100),
            SizedBox(
              width: 250,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  OutlinedButton(
                      style: ButtonStyle(
                          side: MaterialStateProperty.all(const BorderSide(
                              color: Color.fromARGB(255, 0, 0, 0)))),
                      onPressed: () {
                        debugPrint('erty');
                      },
                      child: const Text(
                        'Privacy',
                        style: TextStyle(color: Colors.white),
                      )),
                  OutlinedButton(
                      style: ButtonStyle(
                          side: MaterialStateProperty.all(
                              const BorderSide(color: Colors.red))),
                      onPressed: () {
                        debugPrint('erty');
                      },
                      child: const Text(
                        'Sign In',
                        style: TextStyle(color: Colors.white),
                      )),
                ],
              ),
            )
          ],
        ),
      ),
      body: Stack(children: [
        PageView(
          controller: _pageController,
          onPageChanged: _onPageChanged,
          children: const [
            ContentHome('Unlimited movies, TV shows, and more1.',
                'Watch anymore ,Cannot myLine.\n try The link bellow to sign up'),
            ContentHome('Unlimited movies, TV shows, and more2.',
                'Watch anymore ,Cannot myLine.\n try The link bellow to sign up2'),
            ContentHome('Unlimited movies, TV shows, and more3.',
                'Watch anymore ,Cannot myLine.\n try The link bellow to sign up3'),
            ContentHome('Unlimited movies, TV shows, and more4.',
                'Watch anymore ,Cannot myLine.\n try The link bellow to sign up4')
          ],
        ),
        Positioned(
            top: 625,
            left: 180,
            child: Column(
              children: [
                Row(
                  children: [
                    for (int i = 0; i < 4; i++)
                      AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        margin: const EdgeInsets.only(right: 5),
                        width: 5,
                        height: 5,
                        decoration: BoxDecoration(
                          color:
                              _currentPageIndex == i ? Colors.red : Colors.grey,
                          shape: BoxShape.circle,
                        ),
                      ),
                  ],
                ),
              ],
            )),
        if (_currentPageIndex < 3)
          Positioned(
              top: 640,
              left: 280,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(200.0))),
                  onPressed: () {
                    if (_currentPageIndex < 3) {
                      _pageController.nextPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut);
                    }
                  },
                  child: const Icon(
                    Icons.arrow_forward_ios_sharp,
                    color: Colors.white,
                  )))
        else if (_currentPageIndex == 3)
          const Positioned(top: 640, left: 95, child: GetstartedButton())
      ]),
    );
  }
}

class Barre extends StatelessWidget {
  final Color couleur;
  const Barre(this.couleur, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(5),
        width: 10,
        height: 10,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: couleur,
        ));
  }
}

class GetstartedButton extends StatefulWidget {
  final Color couleur;

  const GetstartedButton({this.couleur = Colors.red, super.key});

  @override
  State<GetstartedButton> createState() => _GetstartedButtonState();
}

class _GetstartedButtonState extends State<GetstartedButton> {
  /* bool enable = false;

  @override
  void initState() {
    testConnection().then((value) => setState(() {
          enable = value;
        }));

    super.initState();

    print("inistate");
  }

  Future<bool> testConnection() async {
    Uri uri = Uri.parse("https://www.google.com");

    try {
      Response response = await get(uri);
      print(response.body);
      return (response.statusCode == 200);
    } on Exception catch (e) {
      return false;
    }
  } */

  bool loading = false;
  @override
  Widget build(BuildContext context) {
    Widget child;

    if (loading) {
      child = const CircularProgressIndicator(color: Colors.white);
    } else {
      child = const Text(
        "Get Started",
        style: TextStyle(color: Colors.white),
      );
    }

    return SizedBox(
        height: 50,
        width: 200,
        child: ColoredBox(
            color: Colors.red,
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => const MoviesGridScreen(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                  /* backgroundColor: Colors.red */

                  backgroundColor: Colors.red,
                  foregroundColor: Colors.red),
              child: child,
            )));
  }
}

class ContentHome extends StatelessWidget {
  final String myText1;
  final String myText2;

  const ContentHome(this.myText1, this.myText2, {super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            alignment: Alignment.center,
            height: 580,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  myText1,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                Text(
                  myText2,
                  style: const TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
