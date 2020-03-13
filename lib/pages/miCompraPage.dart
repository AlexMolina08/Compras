import 'package:flutter/material.dart';

class MiCompraPage extends StatefulWidget {
  @override
  _MiCompraPageState createState() => _MiCompraPageState();
}

class _MiCompraPageState extends State<MiCompraPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: const Text("Aqui va la lista de la compra" , style: TextStyle(fontWeight: FontWeight.bold,
      fontSize: 20.0),)
    );
  }
}
