import 'package:booker/core/localization/localization_bloc.dart';
import 'package:booker/features/home_features/view/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:booker/generated/l10n.dart';

class BookerApp extends StatelessWidget {
  const BookerApp({super.key});
  
  Widget build(BuildContext context) {
    
    return MultiBlocProvider(
      providers: [
        BlocProvider<LocalizationBloc>(
          create: (context) => LocalizationBloc()..loadSavedLocale(),
        ),
      ],
      child: BlocBuilder<LocalizationBloc, Locale>(builder: (context, locale) {
        return MaterialApp(
          title: 'Booker app',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          localizationsDelegates: const [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: S.delegate.supportedLocales,
          home: HomeScreen(),
        );
      }),
    );
  }
}
