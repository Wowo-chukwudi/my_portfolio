import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_portfolio/screens/home_landscape.dart';
import 'package:my_portfolio/screens/home_portrait.dart';
import 'portfolio_theme.dart';

void main() {
  runApp(Portfolio());
}

class Portfolio extends StatelessWidget {
  Portfolio({Key? key}) : super(key: key);

  final theme = PortfolioTheme.dark();

  @override
  Widget build(BuildContext context) {
    //Landscape orientation
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    return MaterialApp(
        theme: theme,
        title: 'Portfolio',
        home: OrientationBuilder(builder: (context, orientation) {
          return orientation == Orientation.portrait
              ? SafeArea(child: Scaffold(body: HomePortrait()))
              : HomeLandscape();
        }));
  }
}
