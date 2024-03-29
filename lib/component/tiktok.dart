import 'package:flutter/material.dart';
import 'package:my_showroom/component/custom_card.dart';
import 'package:url_launcher/url_launcher.dart';

class TiktokApp extends StatelessWidget {
  const TiktokApp({
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
            'images/tiktok1.jpg',
            width: 100,
            height: 100,
            fit: BoxFit.fitHeight,
          ),
        ),
      ),
    );
  }

  Widget bottom() {
    return Row(
      children: [
        Expanded(
            child: Text('노마드코더 틱톡 클론코딩',
                style: TextStyle(fontWeight: FontWeight.bold))),
        IconButton(
            onPressed: () {
              _launchUrl('https://tiktok-clone-fb368.web.app/');
            },
            icon: Icon(Icons.play_arrow)),
        IconButton(
            onPressed: () {
              _launchUrl('https://github.com/kangsudal/tiktok_clone');
            },
            icon: Image.asset('icons/github-mark.png')),
        TextButton(
          onPressed: () {
            _launchUrl('https://nomadcoders.co/tiktok-clone');
          },
          child: Text(
            '출처강의',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return CustomCard(
        backgroundColor: Color(0xffafdce3), top: top(), bottom: bottom());
  }
}

Future<void> _launchUrl(String url) async {
  final Uri _url = Uri.parse(url);
  if (!await launchUrl(_url)) {
    throw 'Could not launch $_url';
  }
}
