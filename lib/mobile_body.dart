import 'package:flutter/material.dart';
import 'package:my_showroom/component/ministock.dart';
import 'package:my_showroom/component/tiktok.dart';

import 'component/millie.dart';
import 'component/neumorphic.dart';
import 'component/performance_tracker.dart';
import 'component/whateatgo.dart';

class MyMobileBody extends StatelessWidget {
  const MyMobileBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double verticalGap = screenWidth * 0.05;
    double horizontalGap = screenWidth * 0.1;
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.fromLTRB(
          horizontalGap,
          verticalGap,
          horizontalGap,
          verticalGap,
        ),
        children: [
          Whateatgo(),
          SizedBox(height: verticalGap),
          TiktokApp(),
          SizedBox(height: verticalGap),
          NeumorphicCalculatorApp(),
          SizedBox(height: verticalGap),
          KangsudalMini(),
          SizedBox(height: verticalGap),
          MillieApp(),
          SizedBox(height: verticalGap),
          PerformanceTrackerApp(),
        ],
      ),
    );
  }
}
