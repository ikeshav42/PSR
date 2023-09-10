import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'listactive.dart';
import 'request.dart'; 
import 'detailedreq.dart'; 

class AdminLand extends StatelessWidget {
  final String username;
  final String email;

  const AdminLand({required this.username, required this.email});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Point, Shoot and Resolve'),
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
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              email,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                letterSpacing: 1.2,
                fontWeight: FontWeight.w300,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
              onPressed: () {
                // Navigate to ActiveRequestsPage when the button is pressed
                List<Request> activeRequests = [
                  Request(
                    description: 'Request 1 Description',
                    category: 'Category A',
                  ),
                  Request(
                    description: 'Request 2 Description',
                    category: 'Category B',
                  ),
                  Request(
                    description: 'Request 3 Description',
                    category: 'Category C',
                  ),
                  Request(
                    description: 'Request 4 Description',
                    category: 'Category A',
                  ),
                  Request(
                    description: 'Request 5 Description',
                    category: 'Category B',
                  ),
                  Request(
                    description: 'Request 6 Description',
                    category: 'Category C',
                  ),
                  Request(
                    description: 'Request 7 Description',
                    category: 'Category A',
                  ),
                  Request(
                    description: 'Request 8 Description',
                    category: 'Category B',
                  ),
                  Request(
                    description: 'Request 9 Description',
                    category: 'Category C',
                  ),
                  Request(
                    description: 'Request 10 Description',
                    category: 'Category A',
                  ),
                  Request(
                    description: 'Request 11 Description',
                    category: 'Category B',
                  ),
                  // Add more requests here
                ];

                // using dummy data for detailed requests.
                // replace it with actual data from your cloud database.
                List<DetailedRequest> detailedRequests = [
                  DetailedRequest(
                    imagePath: 'assets/image1.png',
                    description: 'Request 1 Description',
                    location: 'Location 1',
                    category: 'Category A',
                    name: 'John Doe',
                    rollNumber: '12345',
                    department: 'Engineering',
                  ),
                  DetailedRequest(
                    imagePath: 'assets/image2.png',
                    description: 'Request 2 Description',
                    location: 'Location 2',
                    category: 'Category B',
                    name: 'Jane Smith',
                    rollNumber: '67890',
                    department: 'Design',
                  ),
                  DetailedRequest(
                    imagePath: 'assets/image3.png',
                    description: 'Request 3 Description',
                    location: 'Location 3',
                    category: 'Category C',
                    name: 'Alice Johnson',
                    rollNumber: '54321',
                    department: 'Marketing',
                  ),
                  DetailedRequest(
                    imagePath: 'assets/image4.png',
                    description: 'Request 4 Description',
                    location: 'Location 4',
                    category: 'Category A',
                    name: 'Bob Wilson',
                    rollNumber: '98765',
                    department: 'HR',
                  ),
                  DetailedRequest(
                    imagePath: 'assets/image5.png',
                    description: 'Request 5 Description',
                    location: 'Location 5',
                    category: 'Category B',
                    name: 'Eva Brown',
                    rollNumber: '45678',
                    department: 'Finance',
                  ),
                  DetailedRequest(
                    imagePath: 'assets/image6.png',
                    description: 'Request 6 Description',
                    location: 'Location 6',
                    category: 'Category C',
                    name: 'Michael Clark',
                    rollNumber: '13579',
                    department: 'IT',
                  ),
                  DetailedRequest(
                    imagePath: 'assets/image7.png',
                    description: 'Request 7 Description',
                    location: 'Location 7',
                    category: 'Category A',
                    name: 'Olivia Taylor',
                    rollNumber: '24680',
                    department: 'Sales',
                  ),
                  DetailedRequest(
                    imagePath: 'assets/image8.png',
                    description: 'Request 8 Description',
                    location: 'Location 8',
                    category: 'Category B',
                    name: 'William Turner',
                    rollNumber: '11223',
                    department: 'R&D',
                  ),
                  DetailedRequest(
                    imagePath: 'assets/image9.png',
                    description: 'Request 9 Description',
                    location: 'Location 9',
                    category: 'Category C',
                    name: 'Sophia White',
                    rollNumber: '99887',
                    department: 'Support',
                  ),
                  DetailedRequest(
                    imagePath: 'assets/image10.png',
                    description: 'Request 10 Description',
                    location: 'Location 10',
                    category: 'Category A',
                    name: 'David Harris',
                    rollNumber: '76543',
                    department: 'Management',
                  ),
                  DetailedRequest(
                    imagePath: 'assets/image11.png',
                    description: 'Request 11 Description',
                    location: 'Location 11',
                    category: 'Category B',
                    name: 'Linda Miller',
                    rollNumber: '32109',
                    department: 'Legal',
                  ),
                  // Add more detailed requests here
                ];

                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ActiveRequestsPage(
                      requests: activeRequests,
                      detailedRequests: detailedRequests,
                    ),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                textStyle: const TextStyle(fontSize: 18),
                fixedSize: const Size(220, 55),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: const Text('View active requests'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle 'View resolved requests' button tap
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                textStyle: const TextStyle(fontSize: 18),
                fixedSize: const Size(220, 55),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: const Text('View resolved requests'),
            ),
          ],
        ),
      ),
    );
  }
}
