import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
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
      body: Container(),
    );
  }
}
