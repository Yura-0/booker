import 'dart:ui';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:booker/generated/l10n.dart';

enum LocaleType { en, ua }

class LocalizationBloc extends Bloc<LocaleType, Locale> {
  LocalizationBloc() : super(const Locale('en', '')) {
    on<LocaleType>((event, emit) {
      if (event == LocaleType.en) {
        emit(const Locale('en', ''));
      } else if (event == LocaleType.ua) {
        emit(const Locale('ua', ''));
      }
    });
  }

  void setLocale(LocaleType localeType) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('locale', localeType.toString());
    S.load(_getLocaleFromType(localeType));
    add(localeType);
  }

  Future<void> loadSavedLocale() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? savedLocale = prefs.getString('locale');
    if (savedLocale != null) {
      LocaleType localeType = LocaleType.values
          .firstWhere((type) => type.toString() == savedLocale);
      add(localeType);
    }
  }

  Locale _getLocaleFromType(LocaleType localeType) {
    if (localeType == LocaleType.en) {
      return const Locale('en', '');
    } else if (localeType == LocaleType.ua) {
      return const Locale('ua', '');
    }
    return const Locale('en', '');
  }
}
