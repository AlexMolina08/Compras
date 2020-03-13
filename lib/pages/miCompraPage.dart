import 'package:flutter/material.dart';

class MiCompraPage extends StatefulWidget {
  @override
  _MiCompraPageState createState() => _MiCompraPageState();
}

class _MiCompraPageState extends State<MiCompraPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        elevation: 0,
        centerTitle: true,
        title: Text("Tu lista de la compra"),
      ),
    );
  }
}
