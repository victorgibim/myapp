import 'package:flutter/material.dart';
import 'package:myapp/tiles/drawer_tile.dart';

class CustomDrawer extends StatelessWidget {

  final PageController pageController;

  CustomDrawer(this.pageController);

  @override
  Widget build(BuildContext context) {
    Widget _buildDrawerBack() => Container(
      decoration: BoxDecoration(
      gradient: LinearGradient(
    colors: [
      Color.fromARGB(255, 203, 236, 241),
      Colors.white,
    ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      )
    ),
  );


  return Drawer(
   child: Stack(
    children: <Widget>[
     _buildDrawerBack(),
       ListView(
        padding: EdgeInsets.only(left: 32.0, top: 16.0),
        children: <Widget>[
       Container(
        margin: EdgeInsets.only(bottom: 8.0),
        padding: EdgeInsets.fromLTRB(0.0, 16.0, 16.0, 8.0),
        height: 170.0,
        child: Stack(
          children: <Widget>[
          Positioned(
            top: 8.0,
            left: 0.0,
            child: Text("Teste\nTeste",
            style: TextStyle(fontSize: 34.0, fontWeight: FontWeight.bold),
            ),//texto principal menu drawer
          ),
          Positioned(
            left: 0.0,
            bottom: 0.0,
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Olá,",
                style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                )
              ),//texto secundario menu drawer
          GestureDetector(
             child: Text(
              "Entre ou Cadastre-se",
                 style:TextStyle(
                 color: Theme.of(context).primaryColor,
                 fontSize: 16.0,
                 fontWeight: FontWeight.bold,
                ),
              ),
              onTap: (){

              },
            ),// opção de cadastro ou login
          ],
        ),
      )
    ],
     ),
      ),
      Divider(),
      DrawerTile(Icons.home, "Início", pageController, 0),//primeiro botão drawer
      DrawerTile(Icons.list, "Teste", pageController, 1),//segundo botão drawer
      DrawerTile(Icons.location_on, "Teste", pageController, 2),//terceiro  botão drawer
      DrawerTile(Icons.playlist_add_check, "Teste", pageController, 3),//quarto  botão drawer
        ],
          )
            ],
               ),
              );
  }
}