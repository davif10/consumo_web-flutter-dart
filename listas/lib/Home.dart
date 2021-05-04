import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List _itens = [];

  void _carregarItens(){
    _itens = [];
    for(int i =0; i<=10; i++){
      Map<String, dynamic> item = Map();
      item["titulo"] = "Titulo $i flutter ";
      item["descricao"] = "Descrição $i flutter ";

      _itens.add(item);
    }
  }

  @override
  Widget build(BuildContext context) {
    _carregarItens();

    return Scaffold(
      appBar: AppBar(
        title: Text("Lista"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView.builder(
          itemCount: _itens.length,
            itemBuilder: (context, indice){
              //Map<String, dynamic> item = _itens[indice];
              //print("item ${_itens[indice]["titulo"] }");

              return ListTile(
                onTap: (){
                    showDialog(
                        context: context,
                        builder: (context){
                          return AlertDialog(
                            title: Text(_itens[indice]["titulo"]),
                            titlePadding: EdgeInsets.all(16),
                            titleTextStyle: TextStyle(
                              fontSize: 24,
                              color: Colors.orange,
                              fontWeight: FontWeight.bold
                            ),
                            content: Text(_itens[indice]["descricao"]),
                            contentPadding: EdgeInsets.all(16),
                            contentTextStyle: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold
                            ),
                            backgroundColor: Colors.black,
                            actions: [
                              FlatButton(
                                  onPressed: (){
                                    print("Selecionado sim");
                                    Navigator.pop(context);
                                  },
                                  child: Text("Sim")
                              ),
                              FlatButton(
                                  onPressed: (){
                                    print("Selecionado Não");
                                    Navigator.pop(context);
                                  },
                                  child: Text("Não")
                              ),
                            ],
                          );
                        }
                    );
                },
                /*
                onLongPress: (){
                  print("Clique com onLongPress");
                },*/
                title: Text(_itens[indice]["titulo"]),
                subtitle: Text(_itens[indice]["descricao"]),
              );
            }
        ),
      ),
    );
  }
}
