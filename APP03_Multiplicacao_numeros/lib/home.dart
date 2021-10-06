import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController n1Controller = TextEditingController();
  TextEditingController n2Controller = TextEditingController();

  String infoResultado = "Informe os números!";

  void _calcular() {
    setState(() {
      double n1 = double.parse(n1Controller.text);
      double n2 = double.parse(n2Controller.text);

      double resultado = n1 * n2;

      print(resultado);

      infoResultado = 'Resultado: $resultado';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Multiplicador de Números"),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        backgroundColor: Colors.white,
        body: _body());
  }

  _body() {
    return SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(10.0, 0, 10.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          _textFieldComponent(n1Controller, "Digite o 1° número"),
          _textFieldComponent(n2Controller, "Digite o 2° número"),
          _padding(),
          _myText()
        ],
      ),
    );
  }

  _textFieldComponent(controller, label) {
    return TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          labelText: label, labelStyle: TextStyle(color: Colors.purple)),
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.purple, fontSize: 25.0),
      controller: controller,
    );
  }

  _padding() {
    return Padding(
      padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
      child: Container(
        height: 50.0,
        child: RaisedButton(
          onPressed: _calcular,
          child: Text("Calcular",
              style: TextStyle(color: Colors.white, fontSize: 20.0)),
          color: Colors.green,
        ),
      ),
    );
  }

  _myText() {
    return Text(
      infoResultado,
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.red, fontSize: 25.0),
    );
  }
}
