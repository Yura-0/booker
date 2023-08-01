import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

import 'package:booker/core/fonts.dart';
import 'package:booker/generated/l10n.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutBodyWidget extends StatelessWidget {
  const AboutBodyWidget({super.key});

  _launchURL(BuildContext context) async {
    const url = 'https://github.com/Yura-0/booker';
    final Uri uri = Uri.parse(url);
    try {
      if (await canLaunchUrl(uri)) {
        await launchUrl(uri);
      } else {
        throw 'Could not launch $url';
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(S.of(context).errorOpeningLink),
          duration: const Duration(seconds: 5),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double containerHeight = screenHeight * (2 / 3);

    return Container(
      padding: const EdgeInsets.all(10),
      height: containerHeight,
      child: ListView(
        children: <Widget>[
          Text(
            S.of(context).booker,
            style: const TextStyle(
                fontSize: 30,
                fontFamily: Fonts.mainFontFamily,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.left,
          ),
          Text(S.of(context).bookerDescription,
              style: const TextStyle(
                fontSize: 20,
                fontFamily: Fonts.mainFontFamily,
              ),
              textAlign: TextAlign.center,
              softWrap: true),
          Text(
            S.of(context).motivation,
            style: const TextStyle(
                fontSize: 28,
                fontFamily: Fonts.mainFontFamily,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.left,
          ),
          Text(S.of(context).motivationDescription,
              style: const TextStyle(
                fontSize: 20,
                fontFamily: Fonts.mainFontFamily,
              ),
              textAlign: TextAlign.center,
              softWrap: true),
          Text(
            S.of(context).author,
            style: const TextStyle(
                fontSize: 28,
                fontFamily: Fonts.mainFontFamily,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.left,
          ),
          RichText(
            text: TextSpan(
              text: S.of(context).authorDescription,
              style: Theme.of(context).textTheme.bodyText1,
              children: [
                TextSpan(
                  text: S.of(context).authorName,
                  style: const TextStyle(
                    fontSize: 20,
                    fontFamily: Fonts.mainFontFamily,
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      _launchURL(context);
                    },
                ),
              ],
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
