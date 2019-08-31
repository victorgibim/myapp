import 'package:flutter/material.dart';
import 'package:myapp/tabs/home_tab.dart';
import 'package:myapp/widgets/custom_drawer.dart';

class HomeScreen extends StatelessWidget {

  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      physics: NeverScrollableScrollPhysics(),
      children: <Widget>[
        Scaffold(
          body: HomeTab(),
          drawer: CustomDrawer(_pageController),
          ),
          Scaffold(
            appBar: AppBar(
              title: Text("teste"),
              centerTitle: true,
            ),// barra pagina teste
            drawer: CustomDrawer(_pageController),
            body: Container(
              child: new Image.asset("assets/pics/goku.jpg",),//imagem teste pagina segundo botão teste
            ),
          ),
          Container(color: Colors.yellow,),//pagina terceiro botão teste
          Container(color: Colors.green,),//pagina quarto botão teste
      ],
    );
  }
}