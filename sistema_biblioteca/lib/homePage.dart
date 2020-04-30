import 'package:flutter/material.dart';
//Feito por Paulo Henrique Trindade Reis - 26150223
void main() => runApp(HomePage());

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String appTitle = "Pesquisar";

  bool isSearchEnabled = false;

  _switchSearchBarState(){
    setState(() {
      isSearchEnabled = !isSearchEnabled;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            elevation: 1,
            backgroundColor: Color(0xFF821313),
            title: !isSearchEnabled ? Text(appTitle) : TextField(
              style: TextStyle(
                color: Colors.white,
              ),
              decoration: InputDecoration(
                border: InputBorder.none,
                  prefixIcon: Icon(Icons.search,color: Colors.white),
                  hintText: "Busque nome do livro, autor ou editora",
                  hintStyle: TextStyle(color: Colors.white)
              ),
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(isSearchEnabled ? Icons.close : Icons.search),
                onPressed: _switchSearchBarState,
              ),
          IconButton(
                onPressed: (){},
                icon: Icon(Icons.account_circle),
              )
            ]
        ),
      ),
    );
  }
}