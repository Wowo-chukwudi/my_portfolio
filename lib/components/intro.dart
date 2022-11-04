import 'package:flutter/material.dart';

import '../portfolio_theme.dart';

class Intro extends StatelessWidget {
  const Intro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Stack(
        children: [
          Positioned(
            child: Text(
              'Hi, I\'m \nChukwudi',
              style: Theme.of(context).textTheme.headline1,
            ),
            bottom: 80,
            left: 0,
          ),
          Positioned(
            child: Text(
              'Flutter Mobile Developer',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            bottom: 60,
            left: 0,
          )
        ],
      ),
      constraints: const BoxConstraints.expand(
        width: 350,
        height: 450,
      ),
      // decoration: const BoxDecoration(
      //     image: DecorationImage(
      //       image: AssetImage('assets/me.png'),
      //       fit: BoxFit.cover,
      //       opacity: 0.4,
      //     ),
      //     borderRadius: BorderRadius.only(
      //       bottomRight: Radius.elliptical(140, 174),
      //     )),
    );
  }
}
