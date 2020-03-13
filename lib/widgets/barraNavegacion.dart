import 'package:flutter/material.dart';

/*
* Barra de navegación sencilla con animaciones
* */

class MyNavBar extends StatefulWidget {

  const MyNavBar({@required this.icons , @required this.onPressed , @required this.activeIndex}) : assert(icons != null);

  final List<IconData> icons;
  final Function(int) onPressed;
  final int activeIndex;


  @override
  _MyNavBarState createState() => _MyNavBarState();
}

class _MyNavBarState extends State<MyNavBar> {

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: <Widget>[
            for(var i = 0 ; i < widget.icons.length; ++i)
              IconButton(icon:Icon(widget.icons[i]) ,
                color :
                  i == widget.activeIndex ? Colors.yellow[700] : Colors.black,
                onPressed: () => widget.onPressed(i),


              ) //Mostramos todos los iconos
          ],)
    );
  }
}
