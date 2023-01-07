import 'package:flutter/material.dart';
import 'package:my_showroom/component/custom_card.dart';
import 'package:url_launcher/url_launcher.dart';

class Whateatgo extends StatelessWidget {
  const Whateatgo({
    Key? key,
  }) : super(key: key);

  Widget top() {
    return Center(
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
    );
  }

  Widget bottom() {
    return Row(
      children: [
        Expanded(
            child: Text('한끼잇고', style: TextStyle(fontWeight: FontWeight.bold))),
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
              _launchUrl('https://github.com/kangsudal/whats_for_dinner');
            },
            icon: Image.asset('icons/github-mark.png')),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return CustomCard(
        backgroundColor: Color(0xffd9deeb), top: top(), bottom: bottom());
  }
}

Future<void> _launchUrl(String url) async {
  final Uri _url = Uri.parse(url);
  if (!await launchUrl(_url)) {
    throw 'Could not launch $_url';
  }
}
