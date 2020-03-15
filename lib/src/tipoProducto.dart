import 'package:flutter/material.dart';

/*
* Un tipoProducto es una imagen del producto que recibe como tipo
* */
class TipoProducto extends StatefulWidget {

  String tipo;
  TipoProducto({this.tipo});

  @override
  _TipoProductoState createState() => _TipoProductoState();
}

class _TipoProductoState extends State<TipoProducto> {
  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage('assets/meat.png'),
    );
  }
}
