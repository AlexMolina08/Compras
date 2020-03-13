import 'package:flutter/material.dart';
import 'package:compras/pages/miCompraPage.dart';

void main() => runApp(App());



class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Compras",
      home: Principal());
  }
}



class Principal extends StatefulWidget {
  @override
  _PrincipalState createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MiCompraPage(),
      bottomNavigationBar: Container(
          height: 20,
          color: Colors.amber),
    );
  }
}

