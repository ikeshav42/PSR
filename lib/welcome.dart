import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/home.svg',
              height: 200,
            ),
            const SizedBox(height: 50),//padding gap between image and title change if told to
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.all(10),
                  child: const Icon(
                    Icons.camera_alt,
                    size: 40,
                    color: Colors.teal,
                  ),
                ),
                const SizedBox(width: 15),
                const Text(
                  'Point, Shoot and Resolve',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    //font family maybe??
                  ),
                ),
              ],
            ),
            const SizedBox(height: 23),
            const Text(
              'Your one stop to raise and resolve all your inconvinences. Just point, shoot and get it resolved!',
              softWrap: true,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 33),
            ElevatedButton(
              onPressed: () {
                // button functionality
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: const Text(
                'Get Started',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
