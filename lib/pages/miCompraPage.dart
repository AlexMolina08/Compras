import 'package:flutter/material.dart';

class MiCompraPage extends StatefulWidget {
  @override
  _MiCompraPageState createState() => _MiCompraPageState();
}

class _MiCompraPageState extends State<MiCompraPage> {

  @override
  Widget build(BuildContext context) {
    return setPage();
  }





  //AppBar
  Widget setPage() {
    Color red800 = Colors.red[800];
    return Stack(
      children: <Widget>[
        Container(     // Background
          child: Center(
            child: Text("Tu lista de la compra", style: TextStyle(fontSize: 25.0,
                fontWeight: FontWeight.w600,
                color: Colors.white),),),
          color: Colors.orange[800],
          height: MediaQuery.of(context).size.height * 0.12,
          width: MediaQuery.of(context).size.width,
        ),

        Container(),   // Required some widget in between to float AppBar

        Positioned(    // To take AppBar Size only
          top: 80.0,
          left: 40.0,
          right: 40.0,
          child: Container(
            //TextField
            child: AppBar(
              backgroundColor: Colors.white,
              primary: false,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(bottom: Radius.circular(30), top: Radius.circular(30))
              ),
              title: TextField(
                  decoration: InputDecoration(
                      hintText: "Añade a la lista",
                      border: InputBorder.none,
                      hintStyle: TextStyle(color: Colors.grey))),
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.add, color: Colors.orange[800]), onPressed: () {
                    setState(
                        () {

                        }
                    );
                },),
              ],
            ),
          ),
        )

      ],
    );
  }
}



