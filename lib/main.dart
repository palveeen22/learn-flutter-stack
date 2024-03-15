import 'package:flutter/material.dart';
import 'package:learn_layout_flutter/TestScreen/HomeScreen.dart';
import 'package:learn_layout_flutter/widgets/BottomTab.dart';

/// Flutter code sample for [BottomNavigationBar].

void main() => runApp(const BottomNavigationBarExampleApp());

class BottomNavigationBarExampleApp extends StatelessWidget {
  const BottomNavigationBarExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: BottomNavigationBarExample(),
      home: HomeScreen(),
    );
  }
}
