import 'package:app_ginasio_de_esporte/resources/strings.dart';
import 'package:app_ginasio_de_esporte/resources/theme.dart';
import 'package:app_ginasio_de_esporte/t02_bottom-nav-bar/ginasio_esporte.dart';
import 'package:flutter/material.dart';

void main() => runApp(const SportsGymApp());

class SportsGymApp extends StatefulWidget {
  const SportsGymApp({Key? key}) : super(key: key);

  @override
  State<SportsGymApp> createState() => _SportsGymAppState();
}

class _SportsGymAppState extends State<SportsGymApp> {
  ThemeMode currentThemeMode = ThemeMode.light;

  void toggleThemeMode() {
    setState(() {
      currentThemeMode = currentThemeMode == ThemeMode.light
          ? ThemeMode.dark
          : ThemeMode.light;
    });
  }
//Trocar Tema
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: Strings.appName,
      themeMode: currentThemeMode,
      theme: SportsGymTheme.light,
      darkTheme: SportsGymTheme.dark,
      home: SportsGym(onThemeModePressed: toggleThemeMode),
    );
  }
}
