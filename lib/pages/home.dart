import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
  void initState(){
    super.initState();
    SystemChrome.setEnabledSystemUIOverlays([]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 35), // 44 is the height
        child: AppBar(
          backgroundColor: Colors.greenAccent,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(50)
            )
          ),
          title: Text("Tu lista de la compra",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.normal,
            fontFamily: 'Lobster',
            fontSize: 30
          ),),
          centerTitle: true,
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            print("Has pulsado");
          });
        },
        elevation: 0,
        backgroundColor: Colors.greenAccent,
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,


      //CUERPO DEL SCAFFOLD




    );
  }
}
