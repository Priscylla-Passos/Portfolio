import 'package:app_ginasio_de_esporte/pages/calendario_page.dart';
import 'package:app_ginasio_de_esporte/pages/classificacao_page.dart';
import 'package:app_ginasio_de_esporte/pages/esportes_page.dart';
import 'package:app_ginasio_de_esporte/pages/perfil_page.dart';
import 'package:flutter/material.dart';
import 'package:app_ginasio_de_esporte/resources/strings.dart';

class SportsGym extends StatefulWidget {
  const SportsGym({Key? key, required this.onThemeModePressed})
      : super(key: key);

  final VoidCallback onThemeModePressed;

  @override
  _SportsGymState createState() => _SportsGymState();
}

class _SportsGymState extends State<SportsGym> {
  int currentIndex = 0;

  void onItemPressed(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
        appBar: AppBar(
          title: const Text(Strings.appName),
          actions: [
            IconButton(
              onPressed: widget.onThemeModePressed,
              icon: Icon(
                theme.brightness == Brightness.light
                    ? Icons.dark_mode
                    : Icons.light_mode,
              ),
            )
          ],
        ),
        body: PageView(
          children: const [
            EsportesPage(),
            ClassificacaoPage(),
            CalendarioPage(),
            PerfilPage(),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          elevation: 2.0,
          onPressed: () {},
          child: const Icon(Icons.share),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          child: BottomNavigationBar(
              type: BottomNavigationBarType
                  .fixed, // se usar o shifting acrescenta os backgroudColor
              backgroundColor: Colors.transparent,
              elevation: 0.0,
              currentIndex: currentIndex,
              onTap: onItemPressed,
              showUnselectedLabels: false, //apenas se usar o fixed
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.sports),
                  label: Strings.sports,
                  //backgroundColor: Colors.blue,
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.list),
                  label: Strings.ranking,
                  // backgroundColor: Colors.green,
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.calendar_today),
                  label: Strings.calendar,
                  // backgroundColor: Colors.red,
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: Strings.profile,
                  //  backgroundColor: Colors.pink,
                ),
              ]),
        ));
  }
}
