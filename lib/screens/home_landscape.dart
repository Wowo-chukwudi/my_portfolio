import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_portfolio/components/home_buttons_land.dart';
import 'package:my_portfolio/components/intro_land.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/components/components.dart';

import '../main.dart';

class HomeLandscape extends StatelessWidget {
  const HomeLandscape({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Portfolio',
          style: Theme.of(context).textTheme.headline2,
        ),
        actions: [
          IconButton(
              icon: Icon(Portfolio.themeNotifier.value == ThemeMode.light
                  ? Icons.dark_mode
                  : Icons.light_mode),
              onPressed: () {
                Portfolio.themeNotifier.value =
                    Portfolio.themeNotifier.value == ThemeMode.light
                        ? ThemeMode.dark
                        : ThemeMode.light;
              })
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/me.png'),
              fit: BoxFit.cover,
              opacity: 0.8,
            ),
            borderRadius: BorderRadius.only(
              bottomRight: Radius.elliptical(140, 170),
            )),
        child: GridView(
            scrollDirection: Axis.horizontal,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
            children: [
              const IntroLand(),

              HomeButtonsLand()
              //const AboutMe(),
            ]),
      ),
    );
  }
}
