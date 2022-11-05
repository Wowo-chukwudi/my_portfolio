import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_portfolio/screens/home_landscape.dart';
import 'package:my_portfolio/screens/home_portrait.dart';
import 'portfolio_theme.dart';

void main() {
  runApp(Portfolio());
}

class Portfolio extends StatelessWidget {
  static final ValueNotifier<ThemeMode> themeNotifier =
      ValueNotifier(ThemeMode.light);
  Portfolio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Landscape orientation
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    return ValueListenableBuilder(
        valueListenable: themeNotifier,
        builder: (_, ThemeMode currentMode, __) {
          return MaterialApp(
              theme: PortfolioTheme.light(),
              darkTheme: PortfolioTheme.dark(),
              themeMode: ThemeMode.system,
              title: 'Portfolio',
              debugShowCheckedModeBanner: false,
              home: OrientationBuilder(builder: (context, orientation) {
                return orientation == Orientation.portrait
                    ? SafeArea(child: Scaffold(body: HomePortrait()))
                    : HomeLandscape();
              }));
        });
  }
}
