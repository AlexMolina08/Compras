import 'package:flutter/material.dart';

/*
* Un tipoProducto es una imagen del producto que recibe como tipo
* */
class TipoProducto extends StatelessWidget {

  String tipo;
  TipoProducto({this.tipo});
  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage('assets/${tipo}.png'),
    );
  }
}

