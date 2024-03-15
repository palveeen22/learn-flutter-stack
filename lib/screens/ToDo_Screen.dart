import 'package:flutter/material.dart';

class ToDoScreen extends StatelessWidget {
  const ToDoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
          // title: const Text("To Do List"),
          ),
    );
  }
}
