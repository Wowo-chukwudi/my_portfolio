import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_portfolio/portfolio_theme.dart';

class ContactMe extends StatelessWidget {
  const ContactMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const Icon(
                FontAwesomeIcons.phone,
                size: 15,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                '09020007558',
              )
            ],
          ),
          Row(
            children: [
              const Icon(
                FontAwesomeIcons.envelope,
                size: 15,
              ),
              const SizedBox(
                width: 10,
              ),
              Text('woworoseline@gmail.com')
            ],
          ),
          Row(
            children: [
              const Icon(
                FontAwesomeIcons.slack,
                size: 15,
              ),
              const SizedBox(
                width: 10,
              ),
              Text('dev.chukwudi')
            ],
          )
        ],
      ),
    );
  }
}
