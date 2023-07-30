import 'package:flutter/material.dart';

import 'package:booker/features/about_feature/about_widget_exp.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
     //screen height
    double screenHeight = MediaQuery.of(context).size.height;

    //sizeBox paddings
    double sizeBoxPaddingScreenHeightCoefficient = 1 / 8;
    double sizeBoxHeightInputPadding =
        screenHeight * sizeBoxPaddingScreenHeightCoefficient;
    
    double sizeBoxPaddingScreenHeightBetweenCoefficient = 1/30;
    double sizeBoxHeightBetweenPadding =
        screenHeight * sizeBoxPaddingScreenHeightBetweenCoefficient;
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(
        children: <Widget>[
          SizedBox(
            height: sizeBoxHeightInputPadding,
          ),
          const AboutHeaderWidget(),
          SizedBox(
            height: sizeBoxHeightBetweenPadding,
          ),
          const AboutBodyWidget(),
        ],
      ),
    );
  }
}
