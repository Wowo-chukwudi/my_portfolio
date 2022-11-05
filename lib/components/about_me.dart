import 'package:flutter/material.dart';
import 'package:my_portfolio/components/contact_me.dart';
import '../portfolio_theme.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'About Me',
          style: Theme.of(context).textTheme.headline2,
        ),
      ),
      body: Container(
        padding: const EdgeInsets.only(
          left: 10,
          right: 10,
          top: 20,
        ),
        child: ListView(
          children: [
            Image(height: 300, width: 500, image: AssetImage('assets/me.png')),
            const SizedBox(
              height: 8,
            ),
            Text(
              'Hi, I\'m Chukwudi aka Coddess. I am an intermediate flutter developer.'
              '\nI\'m currently in stage 2 in the HNG9 internship 2022.\nWhat I bring to the company include:'
              '\n   - Experienced github knowledge.\n   - Efficient time management to execute given tasks and achieve goals.\n'
              '   - Ability to identify complex problems, develop and evaluate options and implement solutions.',
              style: Theme.of(context).textTheme.bodyText2,
              textAlign: TextAlign.left,
            ),
            const SizedBox(height: 16),
            Text(
              'Contact Me',
              style: Theme.of(context).textTheme.headline2,
            ),
            const ContactMe(),
            Center(
              child: ElevatedButton(
                child: Text('My Work'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
