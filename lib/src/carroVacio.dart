import 'package:flutter/material.dart';


class IconoCarro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Center(
               child: Container(
                 height: 150,
                 child: Image(image: AssetImage('assets/carro.png'),),
               )
           ),
          SizedBox(height: 10),

          Text("Todavía no has añadido nada",
            style: TextStyle(color: Colors.grey[400],
              fontFamily: 'Playfair',
              fontSize: 15,
              fontStyle: FontStyle.normal
            ),
          )

        ],

      );
  }
}
