import 'package:flutter/material.dart';

class Producto2{
  var nombre;
  var tipo;
  var cantidad;

  Producto2({this.nombre,this.tipo,this.cantidad});

}

class Producto extends StatelessWidget {
  var nombre;
  var tipo;
  var cantidad;

  Producto({this.nombre,this.tipo,this.cantidad});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text("$nombre"),
        subtitle: Text("$cantidad"),
        leading: Icon(Icons.account_box)
      )
    );
  }
}
