import "package:flutter/material.dart";
import 'package:hello_leonardo/TelaInicial.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App 2 - Hello Leonardo',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: TelaInicial(),
    );
  }
}
