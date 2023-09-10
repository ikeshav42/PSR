import 'package:flutter/material.dart';
import 'request.dart';
import 'detailedreq.dart';

class ActiveRequestsPage extends StatelessWidget {
  final List<Request> requests;
  final List<DetailedRequest> detailedRequests;

  ActiveRequestsPage({
    required this.requests,
    required this.detailedRequests,
  });

  void _showDetailsDialog(BuildContext context, DetailedRequest request) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.black,
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Image.asset(
                'assets/home.png',
                width: 200, 
                height: 200, 
              ),
              SizedBox(height: 10),
              Text(
                'Description: ${request.description}',
                style: TextStyle(color: Colors.white),
              ),
              Text(
                'Location: ${request.location}',
                style: TextStyle(color: Colors.white),
              ),
              Text(
                'Category: ${request.category}',
                style: TextStyle(color: Colors.white),
              ),
              Text(
                'Name: ${request.name}',
                style: TextStyle(color: Colors.white),
              ),
              Text(
                'Roll Number: ${request.rollNumber}',
                style: TextStyle(color: Colors.white),
              ),
              Text(
                'Department: ${request.department}',
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Handle 'Resolved' button tap here
                  Navigator.of(context).pop();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green, // Button color
                  foregroundColor: Colors.white, // Text color
                ),
                child: Text('Resolved'),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Active Requests'),
        backgroundColor: Colors.black,
      ),
      body: ListView.builder(
        itemCount: requests.length,
        itemBuilder: (context, index) {
          final request = requests[index];
          return ListTile(
            onTap: () => _showDetailsDialog(context, detailedRequests[index]), 
            title: Text(
              request.description,
              style: TextStyle(color: Colors.white),
            ),
            subtitle: Text(
              request.category,
              style: TextStyle(color: Colors.white),
            ),
          );
        },
      ),
    );
  }
}
