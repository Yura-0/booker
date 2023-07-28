import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:booker/core/localization/localization_bloc.dart';
import 'package:booker/core/theme/theme_bloc.dart';
import 'package:booker/features/home_features/widget_exp.dart';
import 'package:booker/generated/l10n.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final localizationBloc = BlocProvider.of<LocalizationBloc>(context);
    final themeBloc = BlocProvider.of<ThemeBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).hello),
      ),
      body: Center(
          child: Column(
        children: [
          Text(S.of(context).home),
        ],
      )),
      drawer: MyDrawer(
        localizationBloc: localizationBloc,
        themeBloc: themeBloc,
      ),
    );
  }
}
