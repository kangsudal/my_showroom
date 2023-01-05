import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Whateatgo extends StatelessWidget {
  const Whateatgo({
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
              color: Color(0xffd9deeb),
              child: Center(
                child: Container(
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                      color: Colors.black38,
                      blurRadius: 10.0,
                      spreadRadius: -5.0,
                      offset: Offset(.0, 15.0),
                    )
                  ]),
                  child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      child: Image.asset(
                        'icons/whateatgo-icon.png',
                        width: 100,
                        height: 100,
                      )),
                ),
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //   children: [
              //     Padding(
              //       padding: const EdgeInsets.all(8.0),
              //       child: Container(
              //           decoration: const BoxDecoration(
              //             boxShadow: [
              //               BoxShadow(
              //                 color: Colors.black38,
              //                 blurRadius: 10.0,
              //                 spreadRadius: -5.0,
              //                 offset: Offset(5.0, 8.0),
              //               )
              //             ],
              //           ),
              //           child: Image.asset('images/whateatgo1.png')),
              //     ),
              //     Padding(
              //       padding: const EdgeInsets.all(8.0),
              //       child: Container(
              //           decoration: const BoxDecoration(
              //             boxShadow: [
              //               BoxShadow(
              //                 color: Colors.black38,
              //                 blurRadius: 10.0,
              //                 spreadRadius: -5.0,
              //                 offset: Offset(5.0, 8.0),
              //               )
              //             ],
              //           ),
              //           child: Image.asset('images/whateatgo2.png')),
              //     ),
              //   ],
              // ),
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
                          child: Text('한끼잇고',
                              style: TextStyle(fontWeight: FontWeight.bold))),
                      Expanded(
                        child: IconButton(
                          onPressed: () {
                            _launchUrl(
                                'https://play.google.com/store/apps/details?id=com.kangsudal.whateatgo');
                          },
                          icon: Image.asset('icons/google-play-badge.png'),
                          iconSize: 50,
                        ),
                      ),
                      IconButton(
                          onPressed: () {
                            _launchUrl(
                                'https://medium.com/@kangsudal/%EA%B3%84%EC%86%8D-%EB%B2%84%EB%A0%A4%EC%A0%B8%EC%95%BC%ED%95%A0%EA%B9%8C-d0c9cf1e7639');
                          },
                          icon: Icon(Icons.sticky_note_2_outlined)),
                      IconButton(
                          onPressed: () {
                            _launchUrl(
                                'https://github.com/kangsudal/whats_for_dinner');
                          },
                          icon: Image.asset('icons/github-mark.png')),
                    ],
                  ),
                )),
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
