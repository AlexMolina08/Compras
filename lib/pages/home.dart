import 'dart:ui';
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

  List<String> compras = [];


  /*
  * Este metodo muestra muestra en pantalla un mensaje para introducir
  * un nuevo producto en la lista
  * */
  Future<String> _nuevaCompra(BuildContext context) {
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
                Navigator.of(context).pop(_textController.text.toString());
              },
            ),

          ],
        );
      }
    );
  }

  _addProducto(String producto){
    if(producto != "" && !compras.contains(producto)) {
      setState(() {
        compras.add(producto);
      });
    }
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
          _nuevaCompra(context).then((onValue){
            //Aquí tenemos acceso al string devuelto por _insertarCompra
            /*setState(() {
              if(onValue != "" && !compras.contains(onValue))
                compras.add(onValue);
            })*/;
            _addProducto(onValue);
          });
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
            final compra = compras[index];
            return Card(child: Dismissible(
              background: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [Colors.red,Colors.orange
                    ]
                  )
                ),
              ),
              key: Key(compra),
              onDismissed: (direction){
                //Cuando hallamos hecho swipe , eliminamos el item
                setState(() {
                  compras.removeAt(index);
                });

                //Luego mostramos un mensaje

                Scaffold.of(context).showSnackBar(SnackBar(
                  content: Text("$compra eliminado de la lista",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),),
                  backgroundColor: Colors.red,
                ));

              },
              child: ListTile(title: Text('${compras[index]}',
                  style: TextStyle(
                    fontFamily: 'MerriweatherSans',
                    fontSize: 20
                ),
              )
              ),
            )
            );
          }
        ),
      )


    );
  }
}
