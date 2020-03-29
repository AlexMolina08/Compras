import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:compras/src/producto.dart';
import 'package:compras/src/carroVacio.dart';

class MiCompraPage extends StatefulWidget {
  @override
  _MiCompraPageState createState() => _MiCompraPageState();
}

class _MiCompraPageState extends State<MiCompraPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CompraAppBar(),
      body: DecoratedBox(decoration: BoxDecoration(
        image: DecorationImage(image:AssetImage("assets/background.jpg"),fit:BoxFit.cover)
      ),
          child: ComprasListView())

    );
  }

}



//---APPBAR----
class CompraAppBar extends StatelessWidget implements PreferredSizeWidget{
  final String title;
  final Widget child;
  final Function onPressed;
  final Function onTitleTapped;

  CompraAppBar({@required this.title,
    @required this.child,
    @required this.onPressed,
    this.onTitleTapped})
      : preferredSize = Size.fromHeight(60.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        flexibleSpace: Image(
          image: AssetImage("assets/background.jpg"),
          fit: BoxFit.cover
        ),
        elevation: 0,
        centerTitle: true,
        title: Text("Lista de la compra",
          style: TextStyle(
            fontFamily: 'Playfair',
            fontSize: 23,
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
            color: Colors.orange[800]
          ),
        ),

        //---AÑADIR COMPRA---
        actions: <Widget>[
          IconButton(
            onPressed: () async{

              dynamic resultado = await Navigator.pushNamed(context, 'new');

            },
            icon: Icon(Icons.add , color: Colors.orange[800], size: 30,),
          )
        ],
    );
  }

  @override
  final Size preferredSize;
}



class ComprasListView extends StatefulWidget {
  @override
  _ComprasListViewState createState() => _ComprasListViewState();
}

class _ComprasListViewState extends State<ComprasListView> {

  List<Producto> productos = [
    Producto(nombre: "Almejas" , tipo: "fish" , cantidad: 12),
    Producto(nombre: "Carne" , tipo:"meat" , cantidad: 20),
    Producto(nombre: "Donuts" , tipo: "dessert" , cantidad: 20)
  ];

  @override
  Widget build(BuildContext context) {

    return (productos.isEmpty)
        ? IconoCarro()
        : ListView.builder(itemCount: productos.length,
            itemBuilder: (BuildContext context , int index){
                return productos[index];
            }

        );

  }
}


