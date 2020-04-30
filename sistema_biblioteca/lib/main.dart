import 'package:flutter/material.dart';
import 'cadastro_func.dart';
import 'homePage.dart';
//Feito por Iago Guedelha Nunes - 26001970
void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tela Login Biblioteca',
      theme: new ThemeData(
        primarySwatch: Colors.red,
      ),
      home: new LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _LoginPageState();
}
class _LoginPageState extends State<LoginPage> {

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
    return AppBar(
      title: Text("Sistema Biblioteca"),
      centerTitle: true,
      backgroundColor: Color(0xFF821313),
      
    );
  }


  Widget _buildTextFields() {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(top: 160),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Matrícula',
              ),
            ),
          ),
         Container(
           padding: const EdgeInsets.only(bottom: 20),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Senha'
              ),
              obscureText: true,
            ),
          ),
          Column(
            children: <Widget>[
            RaisedButton(
              child:  Text('Entrar'),
              onPressed: (){
                Navigator.push(
                  context,
                   MaterialPageRoute(builder: (context) => HomePage()),
               );
              },
              color: Color(0xFF821313),
              textColor: Colors.white,
            ),
              RaisedButton(
              child:  Text('Nao tenho cadastro'),
              onPressed: (){
                Navigator.push(
                  context,
                   MaterialPageRoute(builder: (context) => CadastroPage()),
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
/*
Participantes do projeto:
Iago Guedelha Nunes - 26001970
Paulo Henrique Trindade Reis - 26150223
Pedro Victor Fernandes Ano Bom - 26156394
Aline Bezerra de Morisson Faria - 26153765
Antonio Monteiro Pantoja - 26153250
*/