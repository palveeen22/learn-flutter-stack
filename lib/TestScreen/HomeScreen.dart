import 'package:flutter/material.dart';
import 'package:learn_layout_flutter/TestScreen/NextScreen.dart';
import 'package:learn_layout_flutter/screens/Home.dart';

void main() {
  runApp(MaterialApp(
    title: 'Home Screen Example',
    home: HomeScreen(),
  ));
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
        // child: Text(
        //   'Welcome to Home Screen!',
        //   style: TextStyle(fontSize: 24),
        // ),
        child: ElevatedButton(
          child: const Text('To'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const NextScreen()),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed action here
          print('Floating Action Button pressed');
        },
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
