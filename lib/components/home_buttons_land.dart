import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_portfolio/components/about_me_land.dart';
import 'components.dart';

class HomeButtonsLand extends StatelessWidget {
  const HomeButtonsLand({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Positioned(
          child: TextButton.icon(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AboutMeLand()),
              );
            },
            icon: Icon(FontAwesomeIcons.personDress),
            label: Text(
              'About Me',
              style: Theme.of(context).textTheme.headline2,
              textAlign: TextAlign.center,
            ),
            style: TextButton.styleFrom(
              minimumSize: const Size(40, 60),
              primary: Colors.white,
              backgroundColor: Color.fromARGB(255, 208, 142, 118),
              //shape: const StadiumBorder()
            ),
          ),
          bottom: 10,
          left: 0,
        ),

        //const SizedBox(width: 20),

        Positioned(
          child: TextButton.icon(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AboutMeLand()),
              );
            },
            label: Text(
              'My Work',
              style: Theme.of(context).textTheme.headline2,
              textAlign: TextAlign.center,
            ),
            icon: Icon(FontAwesomeIcons.briefcase),
            style: TextButton.styleFrom(
              minimumSize: const Size(60, 60),
              primary: Colors.white,
              backgroundColor: Colors.red,

              //shape: const StadiumBorder()
            ),
          ),
          bottom: 10,
          right: 0,
        ),
      ],
    );

    //constraints: const BoxConstraints.expand(),
  }
}
