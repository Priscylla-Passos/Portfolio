import 'package:flutter/material.dart';
import '../resources/strings.dart';

class EsportesPage extends StatefulWidget {
  const EsportesPage({Key? key}) : super(key: key);

  @override
  _EsportesPageState createState() => _EsportesPageState();
}

class _EsportesPageState extends State<EsportesPage> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(Strings.sports)
    );
    
    
  }
}
