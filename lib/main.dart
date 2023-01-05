import 'package:flutter/material.dart';
import 'package:my_showroom/performance_tracker.dart';
import 'package:my_showroom/whateatgo.dart';
import 'package:url_launcher/url_launcher.dart';

import 'millie.dart';
import 'neumorphic.dart';

const primaryColor = Color(0xFF151026);
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: primaryColor,
        appBarTheme: AppBarTheme(
            iconTheme: IconThemeData(color: Color(0xff195b8e)),
            color: Color(0xff195b8e)),
      ),
      home: Scaffold(
        appBar: AppBar(
          // title: Text('kangsudal-dev@naver.com'),
          flexibleSpace: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '강수경',
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  '01035880646',
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  'kangsudal-dev@naver.com',
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
        ),
        body: ListView(
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
        ),
      ),
    );
  }
}

Future<void> _launchUrl(String url) async {
  final Uri _url = Uri.parse(url);
  if (!await launchUrl(_url)) {
    throw 'Could not launch $_url';
  }
}
