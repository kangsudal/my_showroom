import 'package:flutter/material.dart';

import 'component/millie.dart';
import 'component/neumorphic.dart';
import 'component/performance_tracker.dart';
import 'component/whateatgo.dart';

class MyMobileBody extends StatelessWidget {
  const MyMobileBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Whateatgo(),
          NeumorphicCalculatorApp(),
          MillieApp(),
          PerformanceTrackerApp(),
        ],
      ),
    );
  }
}
