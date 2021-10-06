import 'package:flutter/material.dart';
import 'dart:math';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController n1Controller = TextEditingController();
  String infoResultado = "";

  void _calcularAleatorio() {
    setState(() {
      int numero = new Random().nextInt(10);
      infoResultado = "$numero";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _titulo(),
      backgroundColor: Colors.white,
      body: _corpo(),
    );
  }

  _titulo() {
    return AppBar(
      title: Text("Jogo do N° Aleatório"),
      centerTitle: true,
      backgroundColor: Colors.black,
    );
  }

  _corpo() {
    return SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(10.0, 0, 10.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          _texto("Pense em um número de 0 a 10"),
          _foto(),
          _texto("Advinhe o número"),
          _texto(infoResultado),
          _botao(),
        ],
      ),
    );
  }

  _texto(labelText) {
    return Text(labelText,
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.green, fontSize: 25.0));
  }

  _botao() {
    return Padding(
      padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
      child: Container(
        height: 50.0,
        child: RaisedButton(
          onPressed: _calcularAleatorio,
          child: Text("Descobrir",
              style: TextStyle(color: Colors.grey, fontSize: 20.0)),
          color: Colors.deepPurple,
        ),
      ),
    );
  }

  _foto() {
    return Center(
      child: Image.network(
        'https://static.wikia.nocookie.net/batman/images/3/32/Charada.png/revision/latest/scale-to-width-down/265?cb=20150430140527&path-prefix=pt-br',
        height: 150,
        width: 150,
      ),
    );
  }
}
