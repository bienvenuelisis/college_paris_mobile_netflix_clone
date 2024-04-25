import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('resources/images/netflix_logo.png'),
                  Row(
                    children: [
                      Text(
                        'Privacy ',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        ' Sign In',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    'Unlimited movies, TV shows, and more.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                    ),
                  ),
                  Text(
                    ' Watch anywhere. Cancel anytime.',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    'Tap the link below to sign up.',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 5),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Barre(Colors.red),
                          Barre(Colors.grey),
                          Barre(Colors.grey),
                          Barre(Colors.grey),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 50,
                      width: MediaQuery.sizeOf(context).width * 0.75,
                      child: ColoredBox(
                        color: Colors.red,
                        child: ElevatedButton(
                          onPressed: null,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                            foregroundColor: Colors.red,
                            elevation: 10,
                          ),
                          child: Text(
                            'Get Started',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Barre extends StatelessWidget {
  Color couleur;
  Barre(this.couleur);
  Widget build(BuildContext context) {
    return Container(
      width: 5,
      height: 5,
      decoration: BoxDecoration(
        color: couleur,
        borderRadius: BorderRadius.circular(20),
      ),
      margin: EdgeInsets.symmetric(horizontal: 3),
    );
  }
}
