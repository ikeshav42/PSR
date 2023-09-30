import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class LandingPage extends StatefulWidget {
  final String username;
  final String email;
  final int resolvedCount;
  final int unresolvedCount;

  const LandingPage({
    required this.username,
    required this.email,
    required this.resolvedCount,
    required this.unresolvedCount,
  });

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  String? _selectedPendingDropdownValue = 'All'; // Set default value to 'All'
  String? _selectedResolvedDropdownValue = 'All'; // Set default value to 'All'

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
            Text(
              'Welcome, ${widget.username}',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 24,
                letterSpacing: 1.2,
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              widget.email,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                letterSpacing: 1.2,
                fontWeight: FontWeight.w300,
              ),
            ),
            const SizedBox(height: 40),
            // Circular chart
            PieChart(
              dataMap: {
                'Pending requests - ${widget.unresolvedCount}': widget.unresolvedCount.toDouble(),
                'Resolved requests - ${widget.resolvedCount}': widget.resolvedCount.toDouble(),
              },
              animationDuration: const Duration(milliseconds: 800),
              chartLegendSpacing: 32,
              chartRadius: MediaQuery.of(context).size.width / 2.85,
              colorList: const [Colors.red, Colors.green], // Reversed the color order
              chartType: ChartType.ring,
              centerText: "Progress",
              legendOptions: const LegendOptions(
                showLegends: true,
                legendPosition: LegendPosition.bottom,
                legendTextStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white, // Set legend text color to white
                ),
              ),
              chartValuesOptions: const ChartValuesOptions(
                showChartValueBackground: false,
                showChartValues: false,
                showChartValuesInPercentage: true,
                showChartValuesOutside: false,
                chartValueStyle: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Pending Requests Dropdown
            Column(
              children: [
                DropdownButtonFormField<String>(
                  decoration: const InputDecoration(
                    labelText: 'Pending requests',
                    labelStyle: TextStyle(color: Colors.white),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                  style: const TextStyle(color: Colors.white),
                  dropdownColor: Colors.black,
                  value: _selectedPendingDropdownValue,
                  items: <String>[
                    'All',
                    'Admin Office',
                    'Electrical Department',
                    'Plumbing Department',
                    'Hardware Department',
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value == 'All' ? 'All' : value,
                        style: const TextStyle(
                          color: Colors.white,
                          backgroundColor: Colors.black,
                        ),
                      ),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      _selectedPendingDropdownValue = newValue;
                    });
                  },
                ),
              ],
            ),
            const SizedBox(height: 10), // Add spacing between the dropdowns
            // Resolved Requests Dropdown
            Column(
              children: [
                DropdownButtonFormField<String>(
                  decoration: const InputDecoration(
                    labelText: 'Resolved requests',
                    labelStyle: TextStyle(color: Colors.white),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                  style: const TextStyle(color: Colors.white),
                  dropdownColor: Colors.black,
                  value: _selectedResolvedDropdownValue,
                  items: <String>[
                    'All',
                    'Admin Office',
                    'Electrical Department',
                    'Plumbing Department',
                    'Hardware Department',
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value == 'All' ? 'All' : value,
                        style: const TextStyle(
                          color: Colors.white,
                          backgroundColor: Colors.black,
                        ),
                      ),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      _selectedResolvedDropdownValue = newValue;
                    });
                  },
                ),
              ],
            ),
            const SizedBox(height: 70),
            // Logout Button
            ElevatedButton(
              onPressed: () {
                // Handle logout action
                // You can implement the action here
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white, // Background color of the button
              ),
              child: const Text(
                'Logout',
                style: TextStyle(
                  color: Colors.black, // Text color of the button
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
