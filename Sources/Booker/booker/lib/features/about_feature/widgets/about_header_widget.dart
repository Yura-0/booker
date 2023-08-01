import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:booker/core/fonts.dart';
import 'package:booker/features/about_feature/about_assets_exp.dart';
import 'package:booker/generated/l10n.dart';

class AboutHeaderWidget extends StatelessWidget {
  const AboutHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        IconButton(
          icon: Align(
            alignment: Alignment.bottomLeft,
            child: SvgPicture.asset(
              AboutImages.exitButtonImage,
              fit: BoxFit.cover,
            ),
          ),
          iconSize: 51,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        Text(
          S.of(context).aboutUs,
          style: const TextStyle(
            fontSize: 42,
            fontWeight: FontWeight.bold,
            fontFamily: Fonts.mainFontFamily,
          ),
        ),
      ],
    );
  }
}
