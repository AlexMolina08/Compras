import 'package:flutter/material.dart';
import 'package:compras/pages/home.dart';

void main() => runApp(MaterialApp(
    title: "Compras",
    routes: {
      '/' : (context) => Home(),
   }

));