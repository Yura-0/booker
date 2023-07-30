import 'package:booker/core/fonts.dart';
import 'package:flutter/material.dart';

class AboutBodyWidget extends StatelessWidget {
  const AboutBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double containerHeight = screenHeight * (2/3);

    return Container(
      padding: const EdgeInsets.all(10),
      height: containerHeight,
      child: ListView(
        children: const <Widget>[
          Text(
            "Booker",
            style: TextStyle(
                fontSize: 30,
                fontFamily: Fonts.mainFontFamily,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.left,
          ),
          Text(
              "Booker is a free open-source mobile app for counting finances. With Booker you can see your income and expenses and manage them wisely.\n",
              style: TextStyle(
                fontSize: 20,
                fontFamily: Fonts.mainFontFamily,
              ),
              textAlign: TextAlign.center,
              softWrap: true),
          Text(
            "Motivation",
            style: TextStyle(
                fontSize: 28,
                fontFamily: Fonts.mainFontFamily,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.left,
          ),
          Text(
              "The app was made as a training project. The developer gets new experience and hone their skills. Also, it is hoped that this application will help you better manage your financial life, which will improve it is quality.\n",
              style: TextStyle(
                fontSize: 20,
                fontFamily: Fonts.mainFontFamily,
              ),
              textAlign: TextAlign.center,
              softWrap: true),
          Text(
            "Author",
            style: TextStyle(
                fontSize: 28,
                fontFamily: Fonts.mainFontFamily,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.left,
          ),
          Text("Designed / Directed / Produced / Developed by Yurii Kryvonosov",
              style: TextStyle(
                fontSize: 20,
                fontFamily: Fonts.mainFontFamily,
              ),
              textAlign: TextAlign.center,
              softWrap: true),
        ],
      ),
    );
  }
}


