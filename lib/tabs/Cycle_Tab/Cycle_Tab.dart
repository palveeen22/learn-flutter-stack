import 'package:flutter/material.dart';

class CycleTab extends StatelessWidget {
  const CycleTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cycle Tab'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Train Tab', // Your title here
              style: TextStyle(
                fontSize: 24, // Adjust the font size as needed
                fontWeight: FontWeight.bold, // Add bold font weight if desired
              ),
            ),
            SizedBox(height: 20), // Add some space between title and icon
            Icon(Icons.directions_transit),
          ],
        ),
      ),
    );
  }
}
