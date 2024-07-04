import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theme_implementation/cubit/cubit/theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeInitial());

  void darkTheme() => emit(ThemeDark());

  void lightTheme() => emit(ThemeLight());
}
