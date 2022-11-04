import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'components.dart';

class HomeButtons extends StatelessWidget {
  const HomeButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 10,
        right: 10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Center(
              child: TextButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AboutMe()),
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
            ),
          ),
          //const SizedBox(width: 20),

          Expanded(
            child: Center(
              child: TextButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AboutMe()),
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
            ),
          ),
        ],
      ),
    );
  }
}
