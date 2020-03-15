import 'package:flutter/material.dart';
import 'package:compras/custom_navigation_bar.dart';
import 'package:compras/pages/newProductPage.dart';
import 'package:compras/pages/miCompraPage.dart';
import 'package:compras/pages/productosPage.dart';



void main() => runApp(App());


class App extends StatelessWidget {

  //Raíz de la Aplicación
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Compras',
      initialRoute: '/',

      routes: {
        '/' : (context) => MyHomePage(title: 'compras') ,
        'new' : (context) => NewProductPage()
      },

    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int navIndex = 0;

  //lista que no se puede modificar con las páginas a navegar
  final pages = List.unmodifiable(  <Widget>[
    MiCompraPage(),
    ProductosPage()
  ]);


  //lista con los iconos
  final iconList = List<IconData>.unmodifiable([
    Icons.add_shopping_cart,
    Icons.fastfood
  ]);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[navIndex],
      bottomNavigationBar: _buildCustomIconDesign()
    );
  }

  Widget _buildCustomIconDesign() {
    return
        CustomNavigationBar(
          iconSize: 30.0,
          selectedColor: Colors.orange[800],
          strokeColor: Colors.blueGrey[100],
          elevation: 0,
          unSelectedColor: Colors.grey[600],
          backgroundColor: Colors.white,
          items: [
            CustomNavigationBarItem(
              icon: Icons.shopping_cart
            ),
            CustomNavigationBarItem(
              icon: Icons.fastfood
            ),
          ],
          currentIndex: navIndex,
          onTap: (index) {
            setState(() {
              navIndex = index;
            });
          },
        );
  }

}
