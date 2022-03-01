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
      body: Center(
        child: Text('Current index: $currentIndex'),
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType
              .fixed, // se usar o shifting acrescenta os backgroudColor
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
    );
  }
}
