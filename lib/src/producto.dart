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
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        leading: TipoProducto(tipo:"$tipo"),
        title: Center(child:Text("$nombre",
          style: TextStyle(
            fontFamily: 'Playfair',
            fontSize: 25
          ))),
        subtitle: Center(child: Text("x $cantidad",
        style: TextStyle(
          color: Colors.red,
          fontFamily: 'Playfair',
          fontSize: 20,
          fontWeight: FontWeight.bold
        ),),),
        trailing: IconButton( icon: Icon(Icons.check)
        ),
      ),
    );
  }
}
