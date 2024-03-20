import 'package:flutter/material.dart';

class NextScreen extends StatelessWidget {
  const NextScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(context), // Call _buildBody with context
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      elevation: 1,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Top up',
            style: TextStyle(
              fontSize: 25,
              fontFamily: "popins",
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
          Text(
            'History', // Changed the comment to English
            style: TextStyle(
              fontSize: 16,
              color: Color(0xFF0F4FFF),
            ),
          ),
        ],
      ),
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(2.2), // Set the preferred size to 1.0
        child: Divider(color: Colors.grey, thickness: 0.5),
      ),
    );
  }

  // Define _buildBody function
  Widget _buildBody(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.all(16.0), // Add padding of 16 pixels on all sides
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'Beli paket',
            style: TextStyle(
              fontSize: 18,
              fontFamily: "popins",
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
