import 'package:flutter/material.dart';


/*
*  Este widget consistirá de:
*     -Un Listview con las compras
*     -Un boton para añadir una nueva compra
*
* */

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(50)
          )
        ),
        title: Text("Tu lista de la compra",
        style: TextStyle(

        ),),
        centerTitle: true,
      ),

      body: Container(

        child: Center(
          child: Text("Hola!",
            style: TextStyle(
              fontSize: 48.0,
              fontWeight:  FontWeight.bold,
              color: Colors.black
          ),
          )
        )
      )

    );
  }
}
