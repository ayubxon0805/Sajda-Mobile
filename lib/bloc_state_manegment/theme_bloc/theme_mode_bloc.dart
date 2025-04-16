import 'package:flutter_bloc/flutter_bloc.dart';
part 'theme_mode_event.dart';
part 'theme_mode_state.dart';

class ThemeModeBloc extends Bloc<ThemeModeEvent, ThemeModeState> {
  ThemeModeBloc() : super(ThemeModeInitial()) {
    on<SetDarkThemeEvent>(setDartTheme);
    on<SetLightThemeEvent>(setLightTheme);
  }

  Future<void> setDartTheme(
    SetDarkThemeEvent event,
    Emitter<ThemeModeState> emit,
  ) async {
    emit(SetDarkThemeModeState());
  }

  Future<void> setLightTheme(
    SetLightThemeEvent event,
    Emitter<ThemeModeState> emit,
  ) async {
    emit(SetLightThemeModeState());
  }
}
