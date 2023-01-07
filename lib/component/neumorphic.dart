import 'package:flutter/material.dart';
import 'package:my_showroom/component/custom_card.dart';
import 'package:url_launcher/url_launcher.dart';

class NeumorphicCalculatorApp extends StatelessWidget {
  const NeumorphicCalculatorApp({
    Key? key,
  }) : super(key: key);

  Widget top() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
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
              child: Image.asset('images/calculator1.png')),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
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
              child: Image.asset('images/calculator2.png')),
        ),
      ],
    );
  }

  Widget bottom() {
    return Row(
      children: [
        Expanded(
            child: Text('Neumorphic Calculator',
                style: TextStyle(fontWeight: FontWeight.bold))),
        IconButton(
            onPressed: () {
              _launchUrl(
                  'https://calculator-neumorphic-aa62d.firebaseapp.com/');
            },
            icon: Icon(Icons.play_arrow)),
        IconButton(
            onPressed: () {
              _launchUrl(
                  'https://kangsudal.tistory.com/entry/%EA%B3%84%EC%82%B0%EA%B8%B0%ED%99%98%EC%9C%A8%EA%B3%84%EC%82%B0%EA%B8%B0');
            },
            icon: Icon(Icons.sticky_note_2_outlined)),
        IconButton(
            onPressed: () {
              _launchUrl('https://github.com/kangsudal/calculator_neumorphic');
            },
            icon: Image.asset('icons/github-mark.png')),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return CustomCard(
        backgroundColor: Color(0xffdcdbdb), top: top(), bottom: bottom());
  }
}

Future<void> _launchUrl(String url) async {
  final Uri _url = Uri.parse(url);
  if (!await launchUrl(_url)) {
    throw 'Could not launch $_url';
  }
}
