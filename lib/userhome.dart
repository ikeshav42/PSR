import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'samplecam.dart';

class UserHomePageBW extends StatelessWidget {
  final String username; 
  final String email;

  const UserHomePageBW({required this.username, required this.email});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
            'Point, Shoot and Resolve'),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              child: SvgPicture.asset(
                'assets/Maintenance-cuate.svg',
                height: 185,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Welcome, $username',
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  letterSpacing: 1.2,
                  fontWeight: FontWeight.w800),
            ),
            const SizedBox(height: 5),
            Text(
              email,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  letterSpacing: 1.2,
                  fontWeight: FontWeight.w300),
            ),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Imagepick()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                fixedSize: const Size(200, 45),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: const Text(
                'Post Request',
                style: TextStyle(
                  fontSize: 18,
                  letterSpacing: 1.2
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                fixedSize: const Size(200, 45),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: const Text(
                'View Requests',
                style: TextStyle(
                  fontSize: 18,
                  letterSpacing: 1.2
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
//navigation logic here
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                fixedSize: const Size(200, 45),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: const Text(
                'Log Out',
                style: TextStyle(
                  fontSize: 17,
                  letterSpacing: 1.2
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
