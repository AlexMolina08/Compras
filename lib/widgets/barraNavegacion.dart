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

class _MyNavBarState extends State<MyNavBar> with SingleTickerProviderStateMixin{

  double radioBurbuja;
  AnimationController _controller;
  
  @override
  void initState(){
    super.initState();
    radioBurbuja = 0;
    _controller = AnimationController(duration: Duration(milliseconds: 300) , vsync: this);
  }

  @override
  void didUpdateWidget(MyNavBar oldWidget){
    super.didUpdateWidget(oldWidget);
    if(oldWidget.activeIndex != widget.activeIndex){
      _startAnimation();
    }
  }


  void _startAnimation(){

  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: <Widget>[
            for(var i = 0 ; i < widget.icons.length; ++i)
              CustomPaint(
                painter: BeaconPainter(),
                child:IconButton(icon:Icon(widget.icons[i]) ,
                  color :
                  i == widget.activeIndex ? Colors.purple : Colors.black,
                  onPressed: () => widget.onPressed(i),
                ) //Mostramos todos los iconos
              )

          ],)
    );
  }
}


class BeaconPainter extends CustomPainter{

  @override
  void paint(Canvas canvas , Size size){

  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
