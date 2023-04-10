import 'package:flutter/material.dart';
import 'package:my_showroom/component/tiktok.dart';

import 'component/millie.dart';
import 'component/neumorphic.dart';
import 'component/performance_tracker.dart';
import 'component/whateatgo.dart';

class MyWebBody extends StatelessWidget {
  const MyWebBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double verticalGap = screenWidth * 0.05;
    double horizontalGap = screenWidth * 0.2;
    return GridView.count(
      padding: EdgeInsets.fromLTRB(
        horizontalGap,
        verticalGap,
        horizontalGap,
        verticalGap,
      ),
      crossAxisCount: 2,
      mainAxisSpacing: 40,
      crossAxisSpacing: 40,
      children: [
        Whateatgo(),
        NeumorphicCalculatorApp(),
        MillieApp(),
        PerformanceTrackerApp(),
        TiktokApp(),
      ],
    );
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
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TiktokApp(),
            Container(
              margin: const EdgeInsets.all(40),
              height: 400,
              width: 400,
            ),
          ],
        ),
      ],
    );
  }
}
