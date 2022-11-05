import 'package:flutter/material.dart';
import 'package:my_portfolio/main.dart';
import 'package:my_portfolio/portfolio_theme.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/components/components.dart';

class HomePortrait extends StatelessWidget {
  const HomePortrait({Key? key}) : super(key: key);

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
        child: ListView(children: [
          const Intro(),

          const HomeButtons(),
          const SizedBox(
            height: 16,
          ),
          //const AboutMe(),
          const Socials(),
          const SizedBox(
            height: 16,
          ),
        ]),
      ),
    );
  }
}
