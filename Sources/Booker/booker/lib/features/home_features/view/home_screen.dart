import 'package:booker/core/localization/localization_bloc.dart';
import 'package:booker/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  

  @override
  Widget build(BuildContext context) {
    final localizationBloc = BlocProvider.of<LocalizationBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).hello),
      ),
      body: Center(child: Text(S.of(context).home)),
      drawer: Drawer(
        child: DrawerHeader(
            child: Row(
          children: [
            Text(S.of(context).menu),
            const SizedBox(width: 10,),
            TextButton(
                onPressed: () {
                  localizationBloc.setLocale(
                    localizationBloc.state == const Locale('en', '') ? LocaleType.ua : LocaleType.en,
                  );
                },
                child: Text(localizationBloc.state == const Locale('en', '') ? "EN" : "UA",),
              ),
          ],
        )),
      ),
    );
  }
}
