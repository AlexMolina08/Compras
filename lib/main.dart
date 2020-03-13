import 'package:flutter/material.dart';
import 'package:compras/pages/miCompra.dart';

void main() => runApp(MaterialApp(
    title: "Compras",
    routes: {
      '/' : (context) => MiCompra()
   }

));