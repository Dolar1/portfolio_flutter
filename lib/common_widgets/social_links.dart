import 'dart:js' as js;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/utils/colors.dart';

class SocialLinks extends StatelessWidget {
  void socialRedirect(int n) {
    if (n == 1) {
      js.context.callMethod('open', ['https://github.com/Dolar1']);
    } else if (n == 2) {
      js.context
          .callMethod('open', ['https://www.linkedin.com/in/saurabhsingh111/']);
    } else if (n == 3) {
      js.context.callMethod('open', [
        'https://mail.google.com/mail/?view=cm&fs=1&tf=1&to=dolarsingh111@gmail.com'
      ]);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          InkWell(
            onTap: () => socialRedirect(1),
            child: FaIcon(
              FontAwesomeIcons.github,
              color: BLUE,
              size: 30,
            ),
          ),
          const SizedBox(height: 10),
          InkWell(
            onTap: () => socialRedirect(2),
            child: FaIcon(
              FontAwesomeIcons.linkedinIn,
              color: BLUE,
              size: 30,
            ),
          ),
          const SizedBox(height: 10),
          InkWell(
            onTap: () => socialRedirect(3),
            child: Icon(
              Icons.mail_outline_rounded,
              color: BLUE,
              size: 30,
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
