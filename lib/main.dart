import 'package:compras/pages/productosPage.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:compras/pages/miCompraPage.dart';
import 'package:compras/widgets/barraNavegacion.dart';

void main() {

  runApp(App());
}



class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Compras",
      home: Principal());
  }
}
/*
*
* La pagina Principal es la que sabe el indice de pagina actual en la que
* nos encontramos
*
* */

class Principal extends StatefulWidget {
  @override
  _PrincipalState createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  var navIndex = 0; //Indice de la pagina actual


  //lista que no se puede modificar con las páginas a navegar
  final pages = List.unmodifiable(  <Widget>[
    MiCompraPage(),
    ProductosPage()
  ]);


  //lista con los iconos
  final iconList = List<IconData>.unmodifiable([
    Icons.add_shopping_cart,
    Icons.fastfood
  ]);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[navIndex],
      bottomNavigationBar: MyNavBar(icons: iconList ,
          //La funcion onPressed que le pasamos a MyNavBar actualiza el index volviendo a llamar al build del AppBar
          onPressed: (i) => setState( ()=> navIndex = i),
          activeIndex: navIndex)
    );
  }
}

