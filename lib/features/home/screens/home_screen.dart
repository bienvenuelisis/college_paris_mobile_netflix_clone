import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        color: Colors.black,
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
                      'Privacy',
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      'Sign In',
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
            )
          ],
        ),
      ),
    );
  }
}
