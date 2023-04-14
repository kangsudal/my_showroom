import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'custom_card.dart';

class KangsudalMini extends StatelessWidget {
  const KangsudalMini({
    Key? key,
  }) : super(key: key);

  Widget top() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          child: Align(
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black38,
                    blurRadius: 10.0,
                    spreadRadius: -5.0,
                    offset: Offset(5.0, 8.0),
                  ),
                ],
              ),
              child: ClipRRect(
                child: Image.asset('images/ministock1.jpg'),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Align(
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black38,
                    blurRadius: 10.0,
                    spreadRadius: -5.0,
                    offset: Offset(5.0, 8.0),
                  )
                ],
              ),
              child: ClipRRect(
                child: Image.asset('images/ministock2.jpg'),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget bottom() {
    return Row(
      children: [
        Expanded(
            child: Text('소수점주식 UI App',
                style: TextStyle(fontWeight: FontWeight.bold))),
        IconButton(
            onPressed: () {
              _launchUrl('https://kangsudal-mini.firebaseapp.com');
            },
            icon: Icon(Icons.play_arrow)),
        IconButton(
            onPressed: () {
              _launchUrl('https://github.com/kangsudal/kangsudal-mini');
            },
            icon: Image.asset('icons/github-mark.png')),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      top: top(),
      bottom: bottom(),
      backgroundColor: Color(0xffa874d9),
    );
  }
}

Future<void> _launchUrl(String url) async {
  final Uri _url = Uri.parse(url);
  if (!await launchUrl(_url)) {
    throw 'Could not launch $_url';
  }
}
