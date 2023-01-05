import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PerformanceTrackerApp extends StatelessWidget {
  const PerformanceTrackerApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(40),
      height: 400,
      width: 400,
      clipBehavior: Clip.hardEdge,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black38,
            blurRadius: 10.0,
            spreadRadius: -5.0,
            offset: Offset(0.0, 10.0),
          )
        ],
      ),
      child: Column(
        children: [
          Expanded(
            flex: 4,
            child: Container(
              color: Color(0xff4256bf),
                child:
                Padding(
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
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
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
                            _launchUrl(
                                'https://kangsudal.tistory.com/entry/Performance-Tracker');
                          },
                          icon: Icon(Icons.sticky_note_2_outlined)),
                      IconButton(
                          onPressed: () {
                            _launchUrl('https://github.com/kangsudal/performance_tracker');
                          },
                          icon: Image.asset('icons/github-mark.png')),
                    ],
                  ),
                ),
            ),
          ),
        ],
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
