import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'app/constants/globals.dart';
import 'bloc_state_manegment/disableSura/disable_sura_bloc.dart';
import 'bloc_state_manegment/namoz_vaqtlari/namoz_vaqtlari_bloc.dart';
import 'bloc_state_manegment/savedSuraBloc/get_sura_name_with_isar_bloc.dart';
import 'bloc_state_manegment/theme_bloc/theme_mode_bloc.dart';
import 'screens/splash_screen.dart';
import 'services/iser_service/isar_service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    IsarService().openDB();

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => GetSuraNameWithIsarBloc(),
        ),
        BlocProvider(
          create: (context) => DisableSuraBloc(),
        ),
        BlocProvider(
          create: (context) => ThemeModeBloc()..add(SetDarkThemeEvent()),
        ),
        BlocProvider(
          create: (context) =>
              NamozVaqtlariBloc()..add(GetNamozVaqtiEvent("Toshkent")),
        ),  
      ],
      child: BlocBuilder<ThemeModeBloc, ThemeModeState>(
        builder: (context, state) {
          return MaterialApp(
            title: 'Sajda Mobile App',
            themeMode: state is SetLightThemeModeState
                ? ThemeMode.light
                : ThemeMode.dark,
            theme: ThemeData(
              brightness: Brightness.light,
              scaffoldBackgroundColor: const Color.fromARGB(255, 255, 255, 255),
              appBarTheme: const AppBarTheme(
                backgroundColor: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            darkTheme: ThemeData(
              bottomNavigationBarTheme:
                  BottomNavigationBarThemeData(backgroundColor: gray),
              brightness: Brightness.dark,
              scaffoldBackgroundColor: const Color(0xFF040C23),
              appBarTheme: const AppBarTheme(
                backgroundColor: Color(0xFF040C23),
              ),
            ),
            debugShowCheckedModeBanner: false,
            home: const SplashScreen(),
          );
        },
      ),
    );
  }
}
//flutter pub run build_runner build
//dart run build_runner build