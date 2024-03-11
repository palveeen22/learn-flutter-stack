import 'package:flutter/material.dart';
import 'package:learn_layout_flutter/tabs/Car_Tab/Car_Tab.dart';
import 'package:learn_layout_flutter/tabs/Cycle_Tab/Cycle_Tab.dart';
import 'package:learn_layout_flutter/tabs/Train_Tab/Train_Tab.dart';

void main() {
  runApp(const TabBarDemo());
}

class TabBarDemo extends StatelessWidget {
  const TabBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.directions_car)),
                Tab(icon: Icon(Icons.directions_transit)),
                Tab(icon: Icon(Icons.directions_bike)),
              ],
            ),
            title: const Text('Tabs Demo'),
          ),
          body: const TabBarView(
            children: [CarTab(), TrainTab(), CycleTab()],
          ),
        ),
      ),
    );
  }
}
