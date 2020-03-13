import 'package:flutter/material.dart';

/*
* Barra de navegación sencilla con animaciones
* */


class MyNavBar extends StatefulWidget {
  @override
  _MyNavBarState createState() => _MyNavBarState();
}

class _MyNavBarState extends State<MyNavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 20,
        color: Colors.amber);
  }
}
