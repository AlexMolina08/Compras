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


  _insertarCompra(BuildContext context){
    return showDialog(
      context: context,
      builder: (context){
        return AlertDialog(
          title: Text("¿Qué quieres comprar?"),
          content: TextField(
            controller: _textController,
            decoration: InputDecoration(
              hintText: "Introduce producto",
              suffixIcon: IconButton(
                onPressed: () => _textController.clear(),
                icon: Icon(Icons.clear),
              )
            ),
          ),
          actions: <Widget>[
            MaterialButton(
              elevation: 5.0,
              child: Icon(Icons.check),
              onPressed: (){
                Navigator.of(context).pop();
              },
            ),

          ],
        );
      }
    );
  }

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
          backgroundColor: Colors.cyan,
          elevation: 0,
          title: Text("Tu lista de la compra",
          style: TextStyle(
            letterSpacing: 2,
            color: Colors.grey[200],
            fontWeight: FontWeight.normal,
            fontFamily: 'Lobster',
            fontSize: 30
          ),),

          flexibleSpace: Container(

            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: <Color>[
                  Colors.orange,
                  Colors.red
                ],
              ),
            ),
          ),

          centerTitle: true,
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _insertarCompra(context);
        },
        elevation: 0,
        child: Icon(Icons.shopping_basket),
        backgroundColor: Colors.orange,
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      //CUERPO DEL SCAFFOLD.
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: compras.length,
          itemBuilder: (BuildContext context , int index){
            return Card(child: ListTile(title: Text('${compras[index]}'))
            );
          }
        ),
      )


    );
  }
}
