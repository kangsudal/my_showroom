import 'package:flutter/material.dart';

import 'component/millie.dart';
import 'component/neumorphic.dart';
import 'component/performance_tracker.dart';
import 'component/whateatgo.dart';
class MyWebBody extends StatelessWidget {
  const MyWebBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Whateatgo(),
            NeumorphicCalculatorApp(),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MillieApp(),
            PerformanceTrackerApp(),
          ],
        ),
      ],
    );
  }
}
