import 'package:flutter/material.dart';
import 'main.dart';
//Pedro Victor Fernandes Ano Bom - 26156394
void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tela Cadastro',
      theme: new ThemeData(
        primarySwatch: Colors.red[500],
      ),
      home: new CadastroPage(),
    );
  }
}

class CadastroPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _CadastroPageState();
}
class _CadastroPageState extends State<CadastroPage> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: _buildBar(context),
      body: new Container(
        padding: EdgeInsets.all(16.0),
        child: new Column(
          children: <Widget>[
            _buildTextFields(),
          ],
        ),
      ),
    );
  }

  Widget _buildBar(BuildContext context) {
    return new AppBar(
      title: new Text("Cadastro"),
      centerTitle: true,
      backgroundColor: Color(0xFF821313),
    );
  }


  Widget _buildTextFields() {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Matrícula*',
              ),
            ),
          ),
         Container(
           padding: const EdgeInsets.only(bottom: 20),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Nome Completo*'
              ),
              obscureText: true,
            ),
          ),
          
          Container(
           padding: const EdgeInsets.only(bottom: 20),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'OAB'
              ),
              obscureText: true,
          ),
            ),
          
          Container(
           padding: const EdgeInsets.only(bottom: 20),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Senha*'
              ),
              obscureText: true,
          ),
            ),
          
          Container(
           padding: const EdgeInsets.only(bottom: 20),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Confirmar Senha*'
              ),
              obscureText: true,
          ),
            ),
          Column(
            children: <Widget>[
            RaisedButton(
              child:  Text('Criar Cadastro'),
              onPressed: (){
                Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
                (Route<dynamic> route) => false,
                );
              },
              color: Color(0xFF821313),
              textColor: Colors.white,
            ),
             
            ],
          )
        ],
      ),
    );
  }

}