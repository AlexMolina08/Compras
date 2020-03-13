import 'package:flutter/material.dart';

class ProductosPage extends StatefulWidget {
  @override
  _ProductosPageState createState() => _ProductosPageState();
}

class _ProductosPageState extends State<ProductosPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: const Text("Aqui van los productos más recientes" , style: TextStyle(fontWeight: FontWeight.bold,
          fontSize: 20.0),)
    );
  }
}
