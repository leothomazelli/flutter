import 'package:flutter/material.dart';

class PessoasNaLoja extends StatefulWidget {
  const PessoasNaLoja({Key? key}) : super(key: key);

  @override
  _PessoasNaLojaState createState() => _PessoasNaLojaState();
}

class _PessoasNaLojaState extends State<PessoasNaLoja> {
  String numeroPessoas = "0";
  int totalPessoas = 0;

  void _addPessoas() {
    setState(() {
      int pessoasTotal = int.parse(numeroPessoas);

      int resultado = pessoasTotal + 1;

      numeroPessoas = '$resultado';
    });
  }

  void _removePessoas() {
    setState(() {
      int pessoasTotal = int.parse(numeroPessoas);

      int resultado = pessoasTotal - 1;

      if (resultado <= 0) {
        resultado = 0;
      }

      numeroPessoas = '$resultado';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _title(),
      backgroundColor: Colors.white,
      body: _body(),
    );
  }

  _title() {
    return AppBar(
      title: Text("Pessoas presentes na Loja"),
      centerTitle: true,
      backgroundColor: Colors.black,
    );
  }

  _body() {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _boasVindas(),
            _campoNumero(),
            _containerButtons(),
          ],
        ),
      ),
    );
  }

  _campoNumero() {
    return Container(
      child: Text(
        numeroPessoas,
        style: TextStyle(fontSize: 20),
      ),
    );
  }

  _boasVindas() {
    return Container(
      child: Text("Contador de pessoas"),
    );
  }

  _containerButtons() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _buttonAction("Acrescentar"),
          _buttonAction("Decrementar"),
        ],
      ),
    );
  }

  _buttonAction(action) {
    if (action == "Acrescentar") {
      return RaisedButton(
        color: Colors.green[100],
        onPressed: _addPessoas,
        child: Text(
          "Acrescentar",
          style: TextStyle(
            color: Colors.green[800],
            fontSize: 16,
          ),
        ),
      );
    }

    if (action == "Decrementar") {
      return RaisedButton(
        color: Colors.red[100],
        onPressed: _removePessoas,
        child: Text(
          "decrementar",
          style: TextStyle(
            color: Colors.red[800],
            fontSize: 16,
          ),
        ),
      );
    }
  }
}
