import 'package:flutter/material.dart';
import 'package:youtube/telas/Biblioteca.dart';
import 'package:youtube/telas/EmAlta.dart';
import 'package:youtube/telas/Inicio.dart';
import 'package:youtube/telas/Inscricao.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _indiceAtual = 0;
  @override
  Widget build(BuildContext context) {
    List<Widget> telas = [
        Inicio(),
        EmAlta(),
        Inscricao(),
        Biblioteca(),
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.grey,
          opacity: 1,

        ),
        title: Image.asset(
            "images/youtube.png",
          width: 98,
          height: 22,
        ),
        actions: [
          IconButton(
              icon: Icon(Icons.videocam),
              onPressed: (){
                print("Ação: videocam");
              }
          ),
          IconButton(
              icon: Icon(Icons.search),
              onPressed: (){
                print("Ação: pesquisa");
              }
          ),
          IconButton(
              icon: Icon(Icons.account_circle),
              onPressed: (){
                print("Ação: conta");
              }
          ),
        ],
      ),
      body: telas[_indiceAtual],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _indiceAtual,
        onTap: (indice){
          setState(() {
            _indiceAtual = indice;
          });
        },
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.red,
        items: [
          BottomNavigationBarItem(
            //backgroundColor: Colors.orange,
            label: "Início",
              icon: Icon(Icons.home)
          ),
          BottomNavigationBarItem(
              //backgroundColor: Colors.blue,
              label: "Em alta",
              icon: Icon(Icons.whatshot)
          ),
          BottomNavigationBarItem(
              //backgroundColor: Colors.purple,
              label: "Inscrições",
              icon: Icon(Icons.subscriptions)
          ),
          BottomNavigationBarItem(
              //backgroundColor: Colors.green,
              label: "Biblioteca",
              icon: Icon(Icons.folder)
          ),

        ],
      ),
    );
  }
}
