import 'package:flutter/cupertino.dart';
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

  TextEditingController _textController = TextEditingController();

  List<String> compras = ["Pan","tiramisu"];

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
        preferredSize: Size(double.infinity, 45), // 44 is the height
        child: AppBar(
          backgroundColor: Colors.greenAccent,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(34)
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
        child: Icon(Icons.shopping_basket),
        backgroundColor: Colors.greenAccent,
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,


      //CUERPO DEL SCAFFOLD

      body: ListView.builder(
        itemCount: compras.length,
        itemBuilder: (BuildContext context , int index){
          return ListTile(
            title: Text('${compras[index]}'),
          );
        }
      )


    );
  }
}
