import 'package:flutter/material.dart';
import 'package:learn_layout_flutter/tabs/tabs.dart';

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Route'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('To Third'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const TabBarDemo()),
            );
          },
        ),
      ),
    );
  }
}
