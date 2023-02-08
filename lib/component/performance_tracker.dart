import 'package:flutter/material.dart';
import 'package:my_showroom/component/custom_card.dart';
import 'package:url_launcher/url_launcher.dart';

class PerformanceTrackerApp extends StatelessWidget {
  const PerformanceTrackerApp({
    Key? key,
  }) : super(key: key);

  Widget top() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black38,
                  blurRadius: 10.0,
                  spreadRadius: -20.0,
                  offset: Offset(10, 3.0),
                )
              ],
            ),
            child: Image.asset('images/performance_tracker_web.png')),
      ),
    );
  }

  Widget bottom() {
    return Row(
      children: [
        Expanded(
            child: Text('Performance Tracker',
                style: TextStyle(fontWeight: FontWeight.bold))),
        IconButton(
            onPressed: () {
              _launchUrl('https://performance-tracker-f02c3.web.app/');
            },
            icon: Icon(Icons.play_arrow)),
        IconButton(
            onPressed: () {
              _launchUrl('https://github.com/kangsudal/performance_tracker');
            },
            icon: Image.asset('icons/github-mark.png')),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      backgroundColor: Color(0xff4256bf),
      top: top(),
      bottom: bottom(),
    );
  }
}

Future<void> _launchUrl(String url) async {
  final Uri _url = Uri.parse(url);
  if (!await launchUrl(_url)) {
    throw 'Could not launch $_url';
  }
}
