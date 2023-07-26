import 'package:flutter_bloc/flutter_bloc.dart';

enum AppTheme {
  light,
  dark,
}

class ThemeBloc extends Bloc<bool, AppTheme> {
  ThemeBloc() : super(AppTheme.light) {
    on<bool>((isToggle, emit) {
      if (isToggle) {
        emit(state == AppTheme.light ? AppTheme.dark : AppTheme.light);
      }
    });
  }

  void toggleTheme() {
    add(true);
  }
}
