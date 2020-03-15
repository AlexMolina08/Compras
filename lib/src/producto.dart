import 'package:flutter/material.dart';
import 'package:compras/src/tipoProducto.dart';

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
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          title: Text("$nombre",
          style: TextStyle(
              fontFamily: 'Playfair',
              fontSize: 20.0
          )),
          leading: TipoProducto(tipo: "Pescado"),
          onTap: (){},
        ),
      )
    );
  }
}
