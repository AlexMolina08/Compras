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

class _MyNavBarState extends State<MyNavBar> with TickerProviderStateMixin{

  double beaconRadius;
  final double maxBeaconRadius = 30;
  AnimationController _controller;
  
  @override
  void initState(){
    super.initState();
    beaconRadius = 0;
  }

  @override
  void didUpdateWidget(MyNavBar oldWidget){
    super.didUpdateWidget(oldWidget);
    if(oldWidget.activeIndex != widget.activeIndex){
      _startAnimation();
    }
  }


  void _startAnimation(){
    _controller = AnimationController(duration: Duration(milliseconds: 300) , vsync: this);
    final _curve = CurvedAnimation(parent: _controller , curve: Curves.linear);
    Tween<double>(begin: 0 , end: 1 ).animate(_curve)
      ..addListener((){
        setState(() {
          beaconRadius = maxBeaconRadius * _curve.value;
          if(beaconRadius == maxBeaconRadius)
            beaconRadius = 0;
          print(' $beaconRadius , $maxBeaconRadius' );
        });
    });
    _controller.forward();
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
                painter: BeaconPainter(
                  beaconRadius : beaconRadius,
                  maxBeaconRadious: maxBeaconRadius
                ),
                child:GestureDetector(child:Icon(widget.icons[i],
                    color :
                      i == widget.activeIndex ? Colors.purple : Colors.black) ,
                  onTap: () => widget.onPressed(i),
                ) //Mostramos todos los iconos
              )

          ],)
    );
  }
}


class BeaconPainter extends CustomPainter{
  final double beaconRadius;
  final double maxBeaconRadious;

  BeaconPainter({this.beaconRadius , this.maxBeaconRadious});

  @override
  void paint(Canvas canvas , Size size){

    if(beaconRadius == maxBeaconRadious){
      return;
    }

    double strokeWidth = beaconRadius < maxBeaconRadious * 0.5
        ? beaconRadius
        : maxBeaconRadious - beaconRadius;
    print ('strokeWidth : $strokeWidth');
    final paint = Paint()..color = Colors.white..strokeWidth = strokeWidth;
    canvas.drawCircle(Offset(10,10), beaconRadius , paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
