/*
* Esta pagina es para la creacion de un nuevo producto
*/

import 'package:compras/main.dart';
import 'package:flutter/material.dart';

class NewProductPage extends StatefulWidget {
  @override
  _NewProductPageState createState() => _NewProductPageState();
}

class _NewProductPageState extends State<NewProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white70,
        iconTheme: IconThemeData(
          color: Colors.orange[900],
        ),
        centerTitle: true,
        title: Text("Añade un nuevo producto",
          style: TextStyle(
              fontFamily: 'Playfair',
              fontSize: 23,
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
              color: Colors.orange[800]
          ),
        ),
      ),

      body: Column(

      )

    );
  }
}





