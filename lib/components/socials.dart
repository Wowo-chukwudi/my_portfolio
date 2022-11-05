import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Socials extends StatelessWidget {
  const Socials({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {
            launchUrl(Uri.parse(
                'https://instagram.com/the.chukwudi?utm_medium=copy_link'));
          },
          icon: Icon(
            FontAwesomeIcons.instagram,
            size: 40,
          ),
        ),
        const SizedBox(width: 10),
        IconButton(
          onPressed: () {
            launchUrl(Uri.parse('https://twitter.com/dev_chukwudi'));
          },
          icon: Icon(
            FontAwesomeIcons.twitter,
            size: 40,
          ),
        ),
        const SizedBox(width: 10),
        IconButton(
          onPressed: () {
            launchUrl(Uri.parse('https://github.com/Wowo-chukwudi/'));
          },
          icon: Icon(
            FontAwesomeIcons.github,
            size: 40,
          ),
        ),
      ],
    );
  }
}
