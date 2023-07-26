import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:booker/core/core_exp.dart';
import 'package:booker/features/home_features/view/home_screen.dart';
import 'package:booker/generated/l10n.dart';

class BookerApp extends StatelessWidget {
  const BookerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<LocalizationBloc>(
          create: (context) => LocalizationBloc()..loadSavedLocale(),
        ),
        BlocProvider<ThemeBloc>(
          create: (context) => ThemeBloc(),
        ),
      ],
      child: BlocBuilder<LocalizationBloc, Locale>(builder: (context, locale) {
        return BlocBuilder<ThemeBloc, AppTheme>(
          builder: (context, theme) {
            return MaterialApp(
              title: 'Booker app',
              theme: theme == AppTheme.light
                  ? ThemeApp().light()
                  : ThemeApp().dark(),
              localizationsDelegates: const [
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: S.delegate.supportedLocales,
              home: HomeScreen(),
            );
          },
        );
      }),
    );
  }
}
