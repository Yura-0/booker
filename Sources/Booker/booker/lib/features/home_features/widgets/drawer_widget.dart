import 'package:flutter/material.dart';

import 'package:booker/core/core_exp.dart';
import 'package:booker/generated/l10n.dart';

class MyDrawer extends StatelessWidget {
  LocalizationBloc localizationBloc;
  ThemeBloc themeBloc;

  MyDrawer({
    Key? key,
    required this.localizationBloc,
    required this.themeBloc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(children: [
        DrawerHeader(
            decoration: BoxDecoration(color: Theme.of(context).primaryColor),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  S.of(context).menu,
                  style: const TextStyle(
                    fontSize: 30,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                TextButton(
                  onPressed: () {
                    localizationBloc.setLocale(
                      localizationBloc.state == const Locale('en', '')
                          ? LocaleType.ua
                          : LocaleType.en,
                    );
                  },
                  child: Text(
                    localizationBloc.state == const Locale('en', '')
                        ? "EN"
                        : "UA",
                  ),
                ),
                IconButton(
                  onPressed: () {
                    themeBloc.toggleTheme();
                  },
                  icon: themeBloc.state == AppTheme.dark
                      ? const Icon(Icons.brightness_4)
                      : const Icon(Icons.brightness_2),
                ),
              ],
            )),
        GestureDetector(
          child: ListTile(title: Text(S.of(context).statistic)),
        ),
        GestureDetector(
          child: ListTile(title: Text(S.of(context).aboutUs)),
        ),
        const Divider(),
        GestureDetector(
          child: ListTile(title: Text(S.of(context).exit)),
        ),
      ]),
    );
  }
}
