import 'package:flutter/material.dart';

class NextScreen extends StatelessWidget {
  const NextScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Define the number of tabs
      child: Scaffold(
        appBar: _buildAppBar(),
        body: _buildBody(context), // Call _buildBody with context
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      // elevation: 1,
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
            'Riwayat',
            style: TextStyle(
              fontSize: 16,
              color: Color(0xFF0F4FFF),
            ),
          ),
        ],
      ),
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(10),
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
        crossAxisAlignment: CrossAxisAlignment.start, // Align to the start
        children: [
          Text(
            'Beli paket',
            style: TextStyle(
              fontSize: 18,
              fontFamily: "popins",
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 20),
          TabBar(
            isScrollable: true, // Allow tabs to scroll horizontally
            // indicator: null, // Disable indicator
            indicatorPadding: EdgeInsets.zero,
            tabAlignment: TabAlignment.start,
            indicatorColor:
                Color(0xFFE9218E), // Color for the selected tab indicator
            unselectedLabelColor:
                Color(0xFF565656), // Color for unselected tabs
            labelColor: Color(0xFF1A1B1F), // Color for selected tab text
            labelPadding:
                EdgeInsets.only(left: 0, right: 20), // Set label padding
            tabs: [
              Tab(
                child: Text(
                  'Poin WaterHub',
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: "popins",
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'Paket Pelajar',
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: "popins",
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: TabBarView(
              children: [
                // Your content for Tab 1
                Center(child: Text('Content for Tab 1')),
                // Your content for Tab 2
                Center(child: Text('Content for Tab 2')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
