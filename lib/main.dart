import 'package:flutter/material.dart';
import 'package:my_showroom/responsive_layout.dart';
import 'package:my_showroom/web_body.dart';

import 'component/millie.dart';
import 'component/neumorphic.dart';
import 'component/performance_tracker.dart';
import 'component/whateatgo.dart';
import 'mobile_body.dart';

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
      home: SafeArea(
        child: Scaffold(
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
          body: ResponsiveLayout(
            mobileBody: MyMobileBody(),
            webBody: MyWebBody(),
          ),
        ),
      ),
    );
  }
}
